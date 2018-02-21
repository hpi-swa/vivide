actions
tryDeleteClass

	| msg |
	msg := ViOverlayMessageBox new
		title: 'Remove Class';
		message: 'You want to remove ', self theClass icon: ViIcons icons8Info64px1Icon.
	msg addAction: 'Remove class from system.' icon: ViIcons icons8Trash64px2Icon receiver: self selectors: #(deleteClass).
	msg addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon.
	
	msg showAbove: self.