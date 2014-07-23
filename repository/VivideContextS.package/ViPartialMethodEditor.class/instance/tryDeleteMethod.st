as yet unclassified
tryDeleteMethod

	| msg senders |
	senders := self senders.
	
	msg := ViOverlayMessageBox new title: 'Remove Partial Method'.

	msg
		message: 'This method belongs to layers ', self partialMethod layers asString
		icon: UiSilkIcons informationIcon.

	msg
		addAction: 'Remove partial method #', self selector
		icon: UiSilkIcons binIcon
		receiver: self selectors: #(deleteMethod).
			
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false