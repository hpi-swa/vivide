as yet unclassified
updateGridScaleFor: morph
	"Ensure optimal cell size via grid scaling. Keep submorph positions stable."

	"Transcript cr; show: morph extent; cr."
	extent // gridSize in: [:newCellSize | | preferred scale |
		preferred := 40@40.
		scale := newCellSize / preferred.
		
		scale x < 1.0
			ifTrue: [ | div |
				div := (1 / scale x) rounded.
				morph submorphs do: [:m |
					div := div gcd: m gridSpan x ].
				scale := (1/div) @ scale y]
			ifFalse: [
				scale := scale x rounded @ scale y].
		
		scale y < 1.0
			ifTrue: [ | div |
				div := (1 / scale y) rounded.
				morph submorphs do: [:m |
					div := div gcd: m gridSpan y ].
				scale := scale x @ (1/div)]
			ifFalse: [
				scale := scale x @ scale y rounded].
		
		morph submorphs do: [:m |
			m
				gridCell: ((m gridCell - (1@1) * scale) rounded + (1@1));
				gridSpan: (m gridSpan * scale)].
		
		gridSize := gridSize * scale].