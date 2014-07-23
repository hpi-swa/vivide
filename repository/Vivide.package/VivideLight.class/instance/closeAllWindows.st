actions
closeAllWindows

	ActiveWorld submorphs
		select: [:m | m isKindOf: ViSystemWindow]
		thenDo: [:wnd | wnd delete].
		
	ViArtifactToolbar hideAllToolbars.