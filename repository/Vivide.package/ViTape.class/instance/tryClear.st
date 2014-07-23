memento - cleanup
tryClear
	"Private. Use #tryClose instead."

	| msg |
	msg := ViOverlayMessageBox new
		title: 'Close tape';
		message: 'You cannot undo this.' icon: UiSilkIcons informationIcon.
	msg addAction: 'Close this tape.' icon: UiSilkIcons diskMultipleIcon receiver: self selectors: #(close).
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self owner owner.
	
	^ false