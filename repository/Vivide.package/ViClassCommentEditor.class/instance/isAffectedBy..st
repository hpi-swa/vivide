system changes
isAffectedBy: aSystemEvent

	^ (aSystemEvent itemKind == AbstractEvent classKind
		and: [self theClass == aSystemEvent itemClass])
		and: [aSystemEvent changeKind == CommentedEvent changeKind]