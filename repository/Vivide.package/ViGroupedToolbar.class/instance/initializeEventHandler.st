initialization
initializeEventHandler

	super initializeEventHandler.
	
	self connect: self eventHandler signal: #mouseLeft: toSelector: #collapse.
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #collapse.
	self connect: self eventHandler signal: #mouseEntered: toSelector: #expand.
	self connect: self eventHandler signal: #mouseMoved: toSelector: #selectGroupByEvent:.