layout
shrinkWrap: morph from: currentBounds

"	self removeEmptyLinesFor: morph submorphs in: morph submorphBounds keepExtent: true.
	self fixOverlappingMorphs: morph submorphs.
	self normalizeMorphPositions: morph submorphs in: currentBounds.
	self alignNeighboursFor: morph submorphs.
"
	(morph submorphs copyWithout: activeMorph) in: [:other |
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


	morph submorphBounds in: [:b |
		"Transcript cr; show: b topLeft."
		morph submorphs do: [:m |		
			m topLeft: m topLeft + (currentBounds topLeft - b topLeft)].
		self flag: #refactor. "mt: Merge topLeft and extent into positionInOwner:."
		morph
			topLeftInOwner: b topLeft - (morph borderWidth @ morph borderWidth);
			extentInOwner: b extent + (2* (morph borderWidth @ morph borderWidth))
			"bounds: b"].