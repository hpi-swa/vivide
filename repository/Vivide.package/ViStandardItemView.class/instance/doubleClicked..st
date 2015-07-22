signals
doubleClicked: aNode

	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #doubleClicked)
		ifTrue: [self yield: aNode asList].

	self emitAlways.