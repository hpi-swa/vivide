as yet unclassified
updateSubmorphPositionsFor: morph

	| overhead |
	overhead := extent \\ gridSize.
	
	morph submorphs
		select: [:m | m visible]
		thenDo: [:m | | topLeft extent |
			topLeft := m gridCell - (1@1) * cellSize + (self cellInset @ self cellInset).
			extent := m gridSpan * cellSize.
			
			"Give corner cells come extra pixels if there are enough."
			self flag: #refactor. "mt: Distribute extra pixels over all cells."
			m gridCell x - 1 + m gridSpan x = gridSize x
				ifTrue: [extent := (extent x + overhead x) @ extent y].
			m gridCell y - 1 + m gridSpan y = gridSize y
				ifTrue: [extent := extent x @ (extent y + overhead y)].
			
			extent := extent - (2 * (self cellInset @ self cellInset)).
			
			m
				topLeft: topLeft + morph topLeft;
				extent: extent]. 