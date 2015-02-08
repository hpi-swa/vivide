accessing
toolWindows

	^ self world submorphsSatisfying: [:m |
		m isKindOf: ViToolWindow]