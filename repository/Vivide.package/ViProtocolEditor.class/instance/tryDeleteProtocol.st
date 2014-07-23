actions
tryDeleteProtocol

	self warningSent: 'Skipped. Remove empty protocols via class editor.'.

"	| msg objects |
	objects := SdTagOrganizer default objectsAt: tag.
	
	msg := ViOverlayMessageBox new title: 'Remove Tag'.

	msg addAction: 'Remove tag #', tag tagname icon: UiSilkIcons binIcon receiver: self selectors: #(deleteTag).
	
	objects size > 0
		ifTrue: [
			msg
				message: ('This tag is attached to {1} objects.' format: {objects size})
				icon: UiSilkIcons informationIcon;
				addAction: 'Remove, then browse objects.' icon: UiSilkIcons binIcon receiver: self selectors: #(browseObjects deleteTag);
				addAction: 'Just browse objects.' icon: UiFugueIcons arrowStepIcon receiver: self selectors: #(browseObjects)]
		ifFalse: [
			msg
				message: 'This tag is not used.'
				icon: UiSilkIcons informationIcon].
			
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	
	^ false	"