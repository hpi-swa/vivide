memento - cleanup
tryClear
	"Private. Use #tryClose instead."

	| msg |
	self hasUnacceptedChanges
		ifFalse: [self clear. ^ true].
		
	msg := ViOverlayMessageBox new
		title: 'Close editor';
		message: 'There are unaccepted changes.' icon: UiSilkIcons informationIcon.
	msg addAction: 'Accept all changes.' icon: UiSilkIcons diskMultipleIcon receiver: self selectors: #(acceptChanges tryClose).
	msg addAction: 'Ignore all changes.' icon: UiSilkIcons binIcon receiver: self selectors: #(clear tryClose).
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon receiver: self selectors: #(grabKeyboard).
	
	msg showAbove: self.
	
	^ false