as yet unclassified
drawHorizontallyOn: aCanvas

	| fontToUse offset scaleFactor valIndex |
	fontToUse := self fontToUse.
	scaleFactor := self scaleFactor.
	offset := minVal = maxVal
		ifTrue: [0] ifFalse: [(self minVal * scaleFactor) rounded].	

	"Draw steps."
	valIndex := 0.
	self firstVal to: self maxVal by: self incVal do: [:val |
		| x valLabel w |
		valIndex := valIndex + 1.
		x := minVal = maxVal
			ifTrue: [self center x] ifFalse: [self left - offset + (val*scaleFactor)].
		valLabel := (self labelsForValues at: valIndex ifAbsent: [val printShowingDecimalPlaces: precision]) asString.
		w := fontToUse widthOfString: valLabel.

		(x < (self right - (w // 2))
			and: [x > (self left + (w // 2))])  ifTrue: [
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