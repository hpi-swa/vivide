layout
shrinkWrap: morph from: currentBounds

	self removeEmptyLinesFor: morph submorphs in: morph submorphBounds keepExtent: true.
	self fixOverlappingMorphs: morph submorphs.
	self normalizeMorphPositions: morph submorphs in: currentBounds.
	self alignNeighboursFor: morph submorphs.

	morph submorphBounds in: [:b |
		morph extentInOwner: b topLeft - currentBounds topLeft + b extent].