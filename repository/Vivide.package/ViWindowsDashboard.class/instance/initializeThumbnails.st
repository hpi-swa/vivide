as yet unclassified
initializeThumbnails

	| windows |
	windows := ActiveWorld submorphs select: [:m | m isSystemWindow].
	
	windows do: [:wnd |
		| thumbnail |
		wnd hasDropShadow in: [:oldShadowValue |
			wnd hasDropShadow: false.
			[thumbnail := wnd imageForm]
				ensure: [wnd hasDropShadow: oldShadowValue]].
		
		thumbnail := thumbnail scaledToSize: thumbnail extent // 2.
		thumbnail := thumbnail asMorph.
		
		thumbnail setProperty: #window toValue: wnd. 
		thumbnail on: #mouseDown send: #activateWindowFromEvent:thumbnail: to: self.
		thumbnail on: #mouseEnter send: #selectWindowFromEvent:thumbnail: to: self.
		
		self addMorphBack: thumbnail].

	"Select the next possible window."
	selectionRectangle goBehind.
	windows
		ifEmpty: [selectionRectangle hide]
		ifNotEmpty: [self selectWindow: (windows size > 1
			ifTrue: [self thumbnails second]
			ifFalse: [self thumbnails first])].