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

	self shrinkToSubmorphsOf: morph in: currentBounds.