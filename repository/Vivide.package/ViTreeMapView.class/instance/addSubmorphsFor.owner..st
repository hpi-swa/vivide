updating - specific
addSubmorphsFor: node owner: morph

	(node at: #layout ifAbsent: [self layout]) caseOf: {
		[#sliceAndDice] -> [self layoutSliceAndDiceFor: node owner: morph].
		[#strip] -> [self layoutStripFor: node owner: morph].
		[#stripInverted] -> [self layoutStripInvertedFor: node owner: morph].
	}