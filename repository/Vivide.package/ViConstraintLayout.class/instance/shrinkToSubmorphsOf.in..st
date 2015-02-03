as yet unclassified
shrinkToSubmorphsOf: morph in: bounds

	(self boundsForSubmorphs: morph) in: [:b |
		"Transcript cr; show: b topLeft."
		morph submorphs do: [:m |		
			m topLeft: m topLeft + (bounds topLeft - b topLeft)].
		self flag: #refactor. "mt: Merge topLeft and extent into positionInOwner:."
		morph
			boundsInOwner: (b topLeft - (morph borderWidth @ morph borderWidth) extent: b extent + (2* (morph borderWidth @ morph borderWidth)))].