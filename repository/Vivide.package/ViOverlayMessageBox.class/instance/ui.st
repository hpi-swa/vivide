accessing
ui

	^ ui ifNil: [ui := ViOverlayMessageBoxUi new]