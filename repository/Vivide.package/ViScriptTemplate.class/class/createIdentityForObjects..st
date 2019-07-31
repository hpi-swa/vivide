templates - support
createIdentityForObjects: someObjects

	^ someObjects
		ifEmpty: [self createIdentityForGlobal]
		ifNotEmpty: [self createIdentityForTuple: (self baseClassForObjects: someObjects)]