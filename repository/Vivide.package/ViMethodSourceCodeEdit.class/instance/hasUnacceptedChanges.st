testing
hasUnacceptedChanges

	^ (self theText notEmpty and: self selector isNil) or: [super hasUnacceptedChanges]