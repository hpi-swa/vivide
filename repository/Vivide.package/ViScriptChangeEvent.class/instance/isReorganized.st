testing
isReorganized

	^ (self changeKind = ReorganizedEvent changeKind
		or: [self isAdded])
		or: [self isRemoved]