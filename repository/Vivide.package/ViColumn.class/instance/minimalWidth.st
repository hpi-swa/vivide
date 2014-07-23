geometry
minimalWidth

	| minWidth |
	minWidth := 0.
	self submorphs do: [:sm |
		minWidth := minWidth max: sm minimalWidth].
	^ minWidth