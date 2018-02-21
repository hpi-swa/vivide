actions
tryDeleteScript

	| msg senders |
	senders := self object references.
	
	msg := ViOverlayMessageBox new title: 'Remove Script Part'.

	msg
		addAction: 'Remove script part \<', (self object id withoutLineEndingsTruncatedTo: 11), '\>'
		icon: ViIcons icons8Trash64px2Icon
		receiver: self selectors: #(deleteScript).
	
	senders size > 0
		ifTrue: [
			msg
				message: ('This script part has {1} references.' format: {senders size})
				icon: ViIcons icons8Info64px1Icon
				"addAction: 'Remove, then browse references.' icon: UiSilkIcons binIcon receiver: self selectors: #(browseReferences deleteStep);"
				"addAction: 'Just browse references.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(browseReferences)"]
		ifFalse: [
			msg
				message: (self object isDefault ifTrue: ['This is a default script in the current profile!'] ifFalse: ['This script part is not used.'])
				icon: ViIcons icons8Info64px1Icon].
			
	msg addAction: 'Abort this action.' icon: ViIcons icons8Cancel64px1Icon.
	
	msg showAbove: self.
	
	^ false