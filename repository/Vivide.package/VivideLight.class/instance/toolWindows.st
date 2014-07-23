accessing
toolWindows

	^ self world submorphs select: [:m |
		m isKindOf: ViToolWindow]