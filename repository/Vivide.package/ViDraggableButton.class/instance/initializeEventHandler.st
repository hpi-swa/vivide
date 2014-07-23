initialization
initializeEventHandler

	super initializeEventHandler.
	
	self connect: self eventHandler signal: #mouseDragStarted: toSelector: #mouseStartDrag:.  