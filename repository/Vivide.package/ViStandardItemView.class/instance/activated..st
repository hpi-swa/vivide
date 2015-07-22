as yet unclassified
activated: aNode

	((self valueOfProperty: #yieldOn ifAbsent: [#()]) includes: #activated)
		ifTrue: [self yield: aNode asList].

	self emitAlways.