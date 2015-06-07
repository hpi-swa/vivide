as yet unclassified
initialize

	super initialize.
	
	form := Form extent: 300@300 depth: 32.
	canvas := form getCanvas.
	
	self eventHandler: UiEventHandler new.
	self connect: self eventHandler signal: #mouseMoved: toSelector: #drawEvent:.