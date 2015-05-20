as yet unclassified
tryAddScript

	| msg senders |
	senders := self object references.
	
	msg := ViOverlayMessageBox new title: 'Install In Profile'.

	msg
		message: 'The scripts will be accessible from the current profile.'
		icon: UiSilkIcons informationIcon.
		
	msg
		addAction: 'Install scripts'
		icon: UiSilkIcons binIcon
		receiver: self selectors: #(addScript);
		addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false