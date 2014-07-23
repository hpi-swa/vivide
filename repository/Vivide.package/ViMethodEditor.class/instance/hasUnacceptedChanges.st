memento - data
hasUnacceptedChanges

	self theClass ifNil: [^ false].

	^ self isValid
		ifTrue: [super hasUnacceptedChanges]
		ifFalse: [self artifact theText asString ~= self defaultSource]