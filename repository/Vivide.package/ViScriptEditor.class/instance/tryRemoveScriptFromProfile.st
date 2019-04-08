actions - profile
tryRemoveScriptFromProfile

	| msg senders |
	senders := self object references.
	
	msg := ViOverlayMessageBox new title: 'Remove From Profile'.

	msg
		message: 'The scripts will not be accessible anymore.'
		icon: ViIcons icons8Info64px1Icon.
		
	msg
		addAction: 'Remove scripts'
		icon: ViIcons icons8Trash64px2Icon
		receiver: self selectors: #(removeScriptFromProfile);
		addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon.
	
	msg showAbove: self.
	
	^ false