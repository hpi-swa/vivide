geometry
optimalWidth

	| maxWidth |
	maxWidth := 0.
	self submorphs do: [:sm |
		maxWidth := maxWidth max: sm optimalWidth].
	^ maxWidth