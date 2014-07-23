system changes
isAffectedBy: aSystemEvent

	^ (aSystemEvent itemKind == AbstractEvent methodKind
		and: [self theClass == aSystemEvent itemClass])
		and: [
			{RecategorizedEvent changeKind.
			AddedEvent changeKind.
			"RemovedEvent changeKind"} includes:
				aSystemEvent changeKind]