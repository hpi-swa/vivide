submorphs-add/remove
privateAddMorph: anEditor atIndex: index

	self submorphs ifEmpty: [self showFull].
	super privateAddMorph: anEditor atIndex: index.
