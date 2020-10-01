as yet unclassified
drawHorizontallyOn: aCanvas

	| fontToUse offset scaleFactor  |
	fontToUse := self fontToUse.
	scaleFactor := self scaleFactor.
	offset := (minVal * scaleFactor) rounded.	

	"Draw steps."
	firstVal to: maxVal by: incVal do: [:val |
		| x valLabel w |
		x := self left - offset + (val*scaleFactor).
		valLabel := val printShowingDecimalPlaces: 1.
		w := fontToUse widthOfString: valLabel.

		x < (self right - (w // 2)) ifTrue: [
			aCanvas
				line: x @ (self top + (fontToUse widthOf: $x))
				to: x @ self top
				width: 2 color: Color black;
				drawString: valLabel
				at: x - (w // 2)
					@ (self top + ((fontToUse widthOf: $x) * 1.5))
				font: fontToUse
				color: Color black]].
	
	"Draw label."
	aCanvas
		drawString: label
		at: self bottomCenter - ((fontToUse widthOfString: label) // 2 @ fontToUse height)
		font: fontToUse
		color: Color black.