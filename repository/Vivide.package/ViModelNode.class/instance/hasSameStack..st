stack
hasSameStack: node
	"Only compare the script activations on the stack for this."
	
	| myLinks otherLinks |
	(self referenceStack isNil and: [node referenceStack isNil])
		ifTrue: [^ true].
	
	(self referenceStack isNil or: [node referenceStack isNil])
		ifTrue: [^ false].
	
	(self referenceStack isEmpty and: [node referenceStack isEmpty])
		ifTrue: [^ true].
	
	myLinks := Array streamContents: [:s | self referenceStack linkedList linksDo: [:link | s nextPut: link]].
	otherLinks := Array streamContents: [:s | node referenceStack linkedList linksDo: [:link | s nextPut: link]].
	
	myLinks size = otherLinks size ifFalse: [^ false].
	
	myLinks with: otherLinks do: [:linkA :linkB |
		"Compare script activations. See ViScriptActivation >> #=."
		linkA element = linkB element ifFalse: [^ false]].
	
	^ true