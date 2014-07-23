*vividecontexts
doLayeredMethod: layeredMethod

	^ layeredMethod baseMethod
		ifNotNil: [:m | self doObject: m]