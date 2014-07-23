initialization
initializeTapesBar

	tapesBar := ViTapesBar new.
		
	{{'Add Tape'. UiFugueIcons layoutSplitVerticalIcon. #addTape}.
	{'Full Screen'. UiFugueIcons applicationResizeFullIcon. #toggleFullScreen}} do: [:spec |
		tapesBar
			addIcon: spec second
			text: spec first
			receiver: self
			selector: spec third].
	
	"Store a reference to let locator search open tapes."
	tapesBar locator vivide: self.