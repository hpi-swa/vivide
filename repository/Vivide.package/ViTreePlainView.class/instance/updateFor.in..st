initialization
updateFor: aScript in: anEnvironment

	super updateFor: aScript in: anEnvironment.

	self hideSearchBar.
	self hideCommandsBar.