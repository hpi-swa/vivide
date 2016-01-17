initialization - bookmarks
addWorkspace

	self addScript: {
		[:object | object] -> {
			#id -> #workspace.
			#label -> 'Workspace'.
			#isGlobal -> true. "Hmm... might be global is more accurate."
			#priority -> 500.
			#icon -> UiFugueIcons applicationTerminalIcon.
			#view -> ViWorkspaceView}.
	} asScript.