as yet unclassified
showCross: evt on: morph

	morph setProperty: #showCross toValue: evt position.
	"evt hand showTemporaryCursor: Cursor crossHair."
	evt hand showTemporaryCursor: Cursor blank.
	self changed.