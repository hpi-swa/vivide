signals
activated: aNode

	(aNode at: #activated ifAbsent: []) ifNotNil: [:callback |
		^ callback value].
	
	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #activated)
		ifTrue: [self yield: aNode asList].

	self emitAlways.