drop shadows
createDropShadowForBounds: bounds width: width dataSource: source

	| shadowSize canvas dropShadow |
	shadowSize := width.
	dropShadow := Form extent: (bounds extent + ((shadowSize@shadowSize) * 2)) depth: 32.
	canvas := dropShadow getCanvas.
	
	source dropShadowTopLeft width
		to: dropShadow width - source dropShadowTopRight width - 1
		do: [:offset |
			canvas
				translucentImage: source dropShadowTop
				at: offset @ 0].
	
	source dropShadowTopLeft height
		to: dropShadow height - source dropShadowBottomLeft height - 1
		do: [:offset |
			canvas
				translucentImage: source dropShadowLeft
				at: 0 @ offset].

	source dropShadowTopRight height
		to: dropShadow height - source dropShadowBottomRight height - 1
		do: [:offset |
			canvas
				translucentImage: source dropShadowRight
				at: (dropShadow width - source dropShadowRight width) @ offset].

	source dropShadowBottomLeft width
		to: dropShadow width - source dropShadowBottomRight width - 1
		do: [:offset |
			canvas
				translucentImage: source dropShadowBottom
				at: offset @ (dropShadow height - source dropShadowBottom height)].

	canvas
		translucentImage: source dropShadowTopLeft
		at: 0@0.
	canvas
		translucentImage: source dropShadowTopRight
		at: (dropShadow width - source dropShadowTopRight width) @ 0.
	canvas
		translucentImage: source dropShadowBottomLeft
		at: 0 @ (dropShadow height - source dropShadowBottomLeft height).
	canvas
		translucentImage: source dropShadowBottomRight
		at:
			(dropShadow width - source dropShadowTopRight width) @
			(dropShadow height - source dropShadowBottomLeft height).

	^ dropShadow  