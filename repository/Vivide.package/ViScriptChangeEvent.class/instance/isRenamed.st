testing
isRenamed

	^ self changeKind = RenamedEvent changeKind
		or: [self oldProperties ifNil: [false] ifNotNil: [:props | props includesKey: #label]]