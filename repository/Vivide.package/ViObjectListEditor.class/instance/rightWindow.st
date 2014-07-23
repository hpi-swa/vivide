accessing - convenience
rightWindow

	^ self window ifNotNil: [:wnd |
		wnd rightWindow]