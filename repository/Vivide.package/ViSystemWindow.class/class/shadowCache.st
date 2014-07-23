drop shadows
shadowCache

	^ ShadowCache ifNil: [ShadowCache := IdentityDictionary new]