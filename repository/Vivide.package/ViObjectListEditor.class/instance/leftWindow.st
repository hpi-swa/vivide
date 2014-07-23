accessing - convenience
leftWindow

	^ self window ifNotNil: [:wnd |
		wnd leftWindow]