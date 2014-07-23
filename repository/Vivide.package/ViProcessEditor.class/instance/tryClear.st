memento - cleanup
tryClear

	| msg |
	self hasUnacceptedChanges
		ifFalse: [self clear. ^ true].
		
	msg := ViOverlayMessageBox new
		title: 'Close process editor';
		message: 'The process is not terminated.' icon: UiSilkIcons informationIcon.
	msg addAction: 'Terminate process.' icon: UiFugueIcons crossIcon receiver: self selectors: #(terminate tryClose).
	msg addAction: 'Ignore process state.' icon: UiFugueIcons tickIcon receiver: self selectors: #(aboutToClose delete closed).
	msg addAction: 'Abort this action.' icon: ViIconService blankIcon receiver: self selectors: #(grabKeyboard).
	
	msg showAbove: self.
	
	^ false