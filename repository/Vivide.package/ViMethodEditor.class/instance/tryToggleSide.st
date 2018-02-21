actions
tryToggleSide

	| msg |
	self isValid ifFalse: [
		"Just toggle the class if the method is not valid."
		self flag: #moveMethod. "mt: Move to #toggleSide?"
		self context isMeta
			ifTrue: [self context: self context theNonMetaClass]
			ifFalse: [self context: self context theMetaClass].
		^ self].
	
	self hasUnacceptedChanges
		ifFalse: [^ self toggleSide].
		
	msg := ViOverlayMessageBox new
		title: 'Move Method';
		message: 'There are unaccepted changes.' icon: ViIcons icons8Info64px1Icon.
	msg addAction: 'Accept all changes then move.' icon: ViIcons icons8Save64px1Icon receiver: self selectors: #(acceptChanges tryToggleSide).
	msg addAction: 'Ignore all changes.' icon: ViIcons icons8Trash64px2Icon receiver: self selectors: #(clear toggleSide).
	msg addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon.
	
	msg showAbove: self.