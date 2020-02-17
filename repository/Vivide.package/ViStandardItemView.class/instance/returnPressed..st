signals
returnPressed: aNode

	(aNode at: #returnPressed ifAbsent: []) ifNotNil: [:callback |
		^ callback value].

	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #returnPressed)
		ifTrue: [self yield: aNode asList].

	self emitAlways.