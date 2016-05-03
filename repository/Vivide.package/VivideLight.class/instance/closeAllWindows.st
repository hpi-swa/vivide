actions
closeAllWindows

	ActiveWorld submorphs
		select: [:m | (m isKindOf: ViSystemWindow) and: [m model hasUnacceptedChanges not]]
		thenDo: [:wnd | wnd delete].
		
	ViArtifactToolbar hideAllToolbars.