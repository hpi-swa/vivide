actions
tryDeleteMethod

	| msg senders |
	senders := self senders.
	
	msg := ViOverlayMessageBox new title: 'Remove Method'.

	msg addAction: 'Remove method #', self selector icon: UiSilkIcons binIcon receiver: self selectors: #(deleteMethod).
	
	senders size > 0
		ifTrue: [
			msg
				message: ('This method has {1} senders.' format: {senders size})
				icon: ViIcons icons8Info64px1Icon;
				addAction: 'Remove, then browse senders.' icon: ViIcons icons8Trash64px2Icon receiver: self selectors: #(browseSenders deleteMethod);
				addAction: 'Just browse senders.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(browseSenders)]
		ifFalse: [
			msg
				message: 'This method has no senders.'
				icon: ViIcons icons8Info64px1Icon].
			
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false