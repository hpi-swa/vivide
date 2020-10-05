as yet unclassified
drawVerticallyOn: aCanvas

	| fontToUse offset scaleFactor pt m |
	fontToUse := self fontToUse.
	scaleFactor := self scaleFactor.
	offset := minVal = maxVal
		ifTrue: [0] ifFalse: [(self minVal * scaleFactor) rounded].	

	"Draw steps."
	self firstVal to: self maxVal by: self incVal do: [:val |
		| y valLabel w |
		y := minVal = maxVal
			ifTrue: [self center y] ifFalse: [self bottom + offset - (val*scaleFactor)].
		valLabel := val printShowingDecimalPlaces: precision.
		w := fontToUse widthOfString: valLabel, ' x'.
		
		(y > (self top + (fontToUse height // 2))
			and: [y < (self bottom - (fontToUse height // 2))]) ifTrue: [
				aCanvas
					line: self right - (fontToUse widthOf: $x) @ y
					to: self right @ y
					width: 2 color: Color black;
					drawString: valLabel
					at: self right - w
						@ (y - (fontToUse height // 2))
					font: fontToUse
					color: Color black]].

	"Draw label."
	pt := self transformFromWorld globalPointToLocal: self leftCenter "self referencePosition".
	m := MatrixTransform2x3 withOffset: pt.
	m := m composedWithLocal: (MatrixTransform2x3 withAngle: (-90)).
	m := m composedWithLocal: (MatrixTransform2x3 withOffset: pt negated).
	
	aCanvas
		transformBy: m
		clippingTo: self innerBounds
		during: [:c |
			c
				drawString: label
				at: self leftCenter - ((fontToUse widthOfString: label) // 2 @0)
				font: fontToUse
				color: Color black].