signals
doubleClicked: aNode

	(aNode at: #doubleClicked ifAbsent: []) ifNotNil: [:callback |
		^ callback value].

	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #doubleClicked)
		ifTrue: [self yield: aNode asList].

	self emitAlways.