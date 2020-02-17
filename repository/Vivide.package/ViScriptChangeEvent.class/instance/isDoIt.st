testing
isDoIt

	^ self changeKind = DoItEvent changeKind or: [self changeKind = #Evaluated]