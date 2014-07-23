testing
isValid

	^ self selector notNil and: [self selector isDoIt or: [self reference notNil and: [self reference isValid]]]