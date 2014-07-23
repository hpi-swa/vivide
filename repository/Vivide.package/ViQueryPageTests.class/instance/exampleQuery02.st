fixtures
exampleQuery02

	| q |
	q := ViQueryStep collect: '[:morph | morph color]'.
	q definition inputKind: Morph.
	^ q