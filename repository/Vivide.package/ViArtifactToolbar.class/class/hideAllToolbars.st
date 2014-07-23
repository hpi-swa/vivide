global actions
hideAllToolbars

	ActiveWorld submorphs
		select: [:m | m isKindOf: ViArtifactToolbar]  
		thenDo: [:m | m delete].