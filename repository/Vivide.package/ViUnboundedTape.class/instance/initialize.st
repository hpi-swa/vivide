initialization
initialize

	super initialize.
	
	shadow := ViTapeShadow new.
	shadow addDragBtn: self.  
	self addMorph: shadow.
	
	self connect: shadow signal: #editorDropped: toSelector: #addColumnFor:.
	self connect: shadow signal: #tapeDropped: toSelector: #integrateTape:.
	self connect: shadow signal: #closeRequested toSelector: #tryClose.