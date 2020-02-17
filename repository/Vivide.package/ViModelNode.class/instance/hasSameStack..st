stack
hasSameStack: node
	"Only compare the script activations on the stack for this."
	
	| myLinks otherLinks |
	(self referenceStackNoCopy isNil and: [node referenceStackNoCopy isNil])
		ifTrue: [^ true].
	
	(self referenceStackNoCopy isNil or: [node referenceStackNoCopy isNil])
		ifTrue: [^ false].
	
	(self referenceStackNoCopy isEmpty and: [node referenceStackNoCopy isEmpty])
		ifTrue: [^ true].
	
	myLinks := Array streamContents: [:s | self referenceStackNoCopy linkedList linksDo: [:link | s nextPut: link]].
	otherLinks := Array streamContents: [:s | node referenceStackNoCopy linkedList linksDo: [:link | s nextPut: link]].
	
	myLinks size = otherLinks size ifFalse: [^ false].
	
	myLinks with: otherLinks do: [:linkA :linkB |
		"Compare script activations. See ViScriptActivation >> #=."
		linkA element = linkB element ifFalse: [^ false]].
	
	^ true