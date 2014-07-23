memento - data
hasUnacceptedChanges

	^ self theClass
		ifNotNil: [super hasUnacceptedChanges]
		ifNil: [self artifact theText asString ~= self class defaultClassDefinition]