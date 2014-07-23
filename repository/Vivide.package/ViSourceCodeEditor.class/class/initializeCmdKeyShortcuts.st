keyboard shortcut tables
initializeCmdKeyShortcuts

	super initializeCmdKeyShortcuts.
		
	cmdActions at: $o asciiValue + 1 put: #openIt: