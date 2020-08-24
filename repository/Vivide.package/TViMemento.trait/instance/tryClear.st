memento - cleanup
tryClear
	"Private. Use #tryClose instead."

	| msg |
	self hasUnacceptedChanges
		ifFalse: [self clear. ^ true].
		
	msg := ViOverlayMessageBox new
		title: 'Close view';
		message: 'There are unaccepted changes.' icon: ViIcons icons8Info64px1Icon.
	msg addAction: 'Accept all changes.' icon: ViIcons icons8Save64px1Icon receiver: self selectors: #(acceptChanges tryClose).
	msg addAction: 'Ignore all changes.' icon: ViIcons icons8Trash64px2Icon receiver: self selectors: #(clear tryClose).
	msg addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon receiver: self selectors: #(grabKeyboard).
	
	msg showAbove: self.
	
	^ false