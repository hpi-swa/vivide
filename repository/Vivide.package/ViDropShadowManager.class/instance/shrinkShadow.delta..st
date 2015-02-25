as yet unclassified
shrinkShadow: aForm delta: aPoint

	| result canvas |
	result := Form extent: aForm extent + aPoint depth: aForm depth.
	canvas := result getCanvas.

	canvas
		translucentImage: aForm
		at: 0@0
		sourceRect: (0@0 extent: result extent // 2);
		translucentImage: aForm
		at: (result width // 2) @ 0
		sourceRect: ((aForm width // 2) - (aPoint x // 2) @ 0 extent: result extent // 2);
		translucentImage: aForm
		at: 0 @ (result height // 2)
		sourceRect: (0 @ ((aForm height // 2) - (aPoint y // 2)) extent: result extent // 2);
		translucentImage: aForm
		at: result extent // 2
		sourceRect: ((aForm extent // 2) - (aPoint // 2) extent: result extent // 2).		     

	^ result