actions - profile
tryAddScriptToProfile

	| msg |
	
	msg := ViOverlayMessageBox new title: 'Install In Profile'.

	msg
		message: 'The scripts will be accessible from the current profile.'
		icon: ViIcons icons8Info64px1Icon.
		
	msg
		addAction: 'Install scripts'
		icon: ViIcons icons8Ok64px1Icon
		receiver: self selectors: #(addScriptToProfile);
		addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon.
	
	msg showAbove: self.
	
	^ false