actions
tryDeleteClass

	| msg |
	msg := ViOverlayMessageBox new
		title: 'Remove Class';
		message: 'You want to remove ', self theClass icon: UiSilkIcons informationIcon.
	msg addAction: 'Remove class from system.' icon: UiSilkIcons binIcon receiver: self selectors: #(deleteClass).
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.