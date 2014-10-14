as yet unclassified
updateMapIndex: node

	| result index |
	self map ifEmpty: [^ self].
	
	self scriptPointer size = self script size ifTrue: [
		self mapIndex: 1.
		^ self].
	
	result := node.
	index := 1.
	[result isBlock
		and: [result sourceInterval = self scriptPointer]]
			whileFalse: [
				result isBlock ifTrue: [index := index + 1].
				result := result children
					detect: [:n | n sourceInterval includes: self scriptPointer first]
					ifNone: [^ self "Bottom-most. Cancel."]].
	self mapIndex: index + 1.