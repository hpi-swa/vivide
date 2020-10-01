as yet unclassified
hideCross: evt on: morph

	morph removeProperty: #showCross.
	evt hand showTemporaryCursor: nil.
	self changed.