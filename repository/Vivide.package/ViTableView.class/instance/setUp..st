initialization
setUp: script
	
	super setUp: script.
	self updateForQuery: script.
	
	self hideCommandsBar.
	self hideSearchBar.