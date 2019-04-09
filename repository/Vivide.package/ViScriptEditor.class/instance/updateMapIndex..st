updating
updateMapIndex: node

	| result index |
	self map ifEmpty: [^ self].
	
	self areScriptPropertiesVisible ifTrue: [
		self mapIndex: 1.
		^ self].
	
	result := node.
	index := 1.
	[result isBlock
		and: [result sourceInterval = self fullSourceCodeInterval]]
			whileFalse: [
				result isBlock ifTrue: [index := index + 1].
				result := result children
					detect: [:n | n sourceInterval includes: self fullSourceCodeInterval first]
					ifNone: [^ self "Bottom-most. Cancel."]].
				
	self mapIndex: index + 1.