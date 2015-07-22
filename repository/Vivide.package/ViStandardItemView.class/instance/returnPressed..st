signals
returnPressed: aNode

	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #returnPressed)
		ifTrue: [self yield: aNode asList].

	self emitAlways.