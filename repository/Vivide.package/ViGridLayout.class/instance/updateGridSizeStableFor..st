as yet unclassified
updateGridSizeStableFor: morph
	"Cell sizes should not change."
	
	gridSize in: [:oldGridSize |
		cellSize in: [:oldCellSize |
			gridSize := 0@0.
			morph submorphs
				select: [:m | m visible]
				thenDo: [:m | gridSize := gridSize max: m gridCell - (1@1) + m gridSpan].
		
			(oldGridSize notNil and: [oldCellSize notNil])
				ifTrue: [		
					"Resize container so that cell size keeps stable for new cells."
					morph extentInOwner: morph extent + ((gridSize - oldGridSize) * oldCellSize).
					extent := morph extent + ((gridSize - oldGridSize) * oldCellSize)]
					"extent := morph extent]"
				ifFalse: [
					extent := morph extent].
	]].