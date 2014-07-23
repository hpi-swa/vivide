system changes
isAffectedBy: aSystemEvent

	^ self theClass == aSystemEvent itemClass
		and: [aSystemEvent changeKind ~= RemovedEvent changeKind]