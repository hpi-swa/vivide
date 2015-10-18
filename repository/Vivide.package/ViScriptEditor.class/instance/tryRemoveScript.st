actions - profile
tryRemoveScript

	| msg senders |
	senders := self object references.
	
	msg := ViOverlayMessageBox new title: 'Remove From Profile'.

	msg
		message: 'The scripts will not be accessible anymore.'
		icon: UiSilkIcons informationIcon.
		
	msg
		addAction: 'Remove scripts'
		icon: UiSilkIcons binIcon
		receiver: self selectors: #(removeScript);
		addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false