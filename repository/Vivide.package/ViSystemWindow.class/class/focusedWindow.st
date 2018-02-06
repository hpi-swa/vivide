as yet unclassified
focusedWindow

	ViActiveVivide world submorphsDo: [:m |
		"Either the one where the halo is..."
		(m isKindOf: ViPaneHaloMorph) ifTrue: [
			^ m target containingWindow
				ifNil: [m]
				ifNotNil: [:wnd | wnd]].
		"Or the window where the keyboard focus is..."
		((m isKindOf: ViSystemWindow) and: [m hasAnyKeyboard])
			ifTrue: [^ m]].
	^ nil