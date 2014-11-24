layout
shrinkWrap: morph from: currentBounds

	(morph submorphs reject: [:m | m == activeMorph or: [m disableTableLayout]]) in: [:other |
	self
		alignNeighbours: other
		for: activeMorph.
	self
		pushMorphsAway: other
		by: activeMorph.
	self
		snapNeighbours: other
		for: activeMorph.
	].

	(self boundsForSubmorphs: morph) in: [:b |
		"Transcript cr; show: b topLeft."
		morph submorphs do: [:m |		
			m topLeft: m topLeft + (currentBounds topLeft - b topLeft)].
		self flag: #refactor. "mt: Merge topLeft and extent into positionInOwner:."
		morph
			boundsInOwner: (b topLeft - (morph borderWidth @ morph borderWidth) extent: b extent + (2* (morph borderWidth @ morph borderWidth)))].