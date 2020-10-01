as yet unclassified
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	"1) Draw the cross at hand position."
	(graph hasProperty: #showCross) ifTrue: [ | pt |
		pt := (graph valueOfProperty: #showCross) "evt position".
		aCanvas
			line: graph left @ pt y to: graph right @ pt y
			width: 1 color: Color gray
			dashLength: 3
			secondColor: Color transparent
			secondDashLength: 6
			startingOffset: 0;

			line: pt x @ graph top to: pt x @ graph bottom
			width: 1 color: Color gray
			dashLength: 3
			secondColor: Color transparent
			secondDashLength: 6
			startingOffset: 0.
			
		"2) Draw drag-selection rectangle."
		(graph hasProperty: #dragStart) ifTrue: [ | pt2 |
			pt2 := (graph valueOfProperty: #dragStart) "evt position".
			aCanvas
				fillRectangle: ((pt min: pt2) corner: (pt max: pt2))
				color: (Color gray alpha: 0.5).	
	]].