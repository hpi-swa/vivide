source code
hiddenBlockNodes
	"Parse fullSourceCode, looking for all block nodes that are not in fullSourceCodeInterval."

	| nextNodes result |
	self isWizardActive ifTrue: [^ #()].
	
	nextNodes := OrderedCollection withAll: (RBParser parseExpression: self fullSourceCode) children.
	
	[nextNodes notEmpty] whileTrue: [
		| node |
		node := nextNodes removeFirst.
		(node isBlock and: [node sourceInterval = self fullSourceCodeInterval])
			ifTrue: [result := node. nextNodes := #() "Stop here."]
			ifFalse: [nextNodes addAll: node children]].
	
	^ result
		ifNil: [#()]
		ifNotNil: [:node | node parents select: [:ea | ea isBlock]]