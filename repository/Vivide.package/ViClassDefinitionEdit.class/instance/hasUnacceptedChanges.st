testing
hasUnacceptedChanges

	^ (self theText notEmpty and: self theClass isNil) or: [super hasUnacceptedChanges]