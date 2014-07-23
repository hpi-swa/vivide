actions
undoRepeatedReturnPress

	returnCount := 0.
	self selectionChanged.
	self editor backTo: previousTextEnd.
	self updateFromParagraph.