as yet unclassified
addSelectionAttribute: attr

	self theText
		addAttribute: attr
		from: self selection first
		to: self selection last.
		
	self textMorph paragraph composeAll.
	self textMorph editor recomputeSelection.
	self textMorph changed.