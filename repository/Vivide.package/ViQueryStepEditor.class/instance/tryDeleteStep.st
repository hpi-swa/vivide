actions
tryDeleteStep

	| msg senders |
	senders := self references.
	
	msg := ViOverlayMessageBox new title: 'Remove Query Step'.

	msg
		addAction: 'Remove query step \<', (self step id withoutLineEndingsTruncatedTo: 11), '\>'
		icon: UiSilkIcons binIcon
		receiver: self selectors: #(deleteStep).
	
	senders size > 0
		ifTrue: [
			msg
				message: ('This step has {1} references.' format: {senders size})
				icon: UiSilkIcons informationIcon;
				"addAction: 'Remove, then browse references.' icon: UiSilkIcons binIcon receiver: self selectors: #(browseReferences deleteStep);"
				addAction: 'Just browse references.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(browseReferences)]
		ifFalse: [
			msg
				message: 'This query step is not used.'
				icon: UiSilkIcons informationIcon].
			
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false