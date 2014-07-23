accessing - header
headerColor: aColor

	| fillStyle header |
	header := self header.
	fillStyle := aColor = (Color gray: 0.85)
		ifTrue: [aColor]
		ifFalse: [(GradientFillStyle ramp: {
			0.15 -> (Color gray: 0.85).
			0.5 -> aColor.
			0.85 -> (Color gray: 0.85)})
			origin: header topLeft;
			direction: 0 @ header height].
	header fillStyle: fillStyle.