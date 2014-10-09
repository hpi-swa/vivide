actions
tryDeleteScript

	| msg senders |
	senders := self object references.
	
	msg := ViOverlayMessageBox new title: 'Remove Script Part'.

	msg
		addAction: 'Remove script part \<', (self object id withoutLineEndingsTruncatedTo: 11), '\>'
		icon: UiSilkIcons binIcon
		receiver: self selectors: #(deleteScript).
	
	senders size > 0
		ifTrue: [
			msg
				message: ('This part has {1} references.' format: {senders size})
				icon: UiSilkIcons informationIcon;
				"addAction: 'Remove, then browse references.' icon: UiSilkIcons binIcon receiver: self selectors: #(browseReferences deleteStep);"
				addAction: 'Just browse references.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(browseReferences)]
		ifFalse: [
			msg
				message: 'This script part is not used.'
				icon: UiSilkIcons informationIcon].
			
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false