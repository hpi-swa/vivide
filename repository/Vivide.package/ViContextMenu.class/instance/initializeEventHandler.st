initialization
initializeEventHandler

	super initializeEventHandler.
	
	self eventHandler disconnectSignal: #mouseEntered: from: self.
	
	self connect: self eventHandler signal: #mouseMoved: toSelector: #updateAlphaFor:.
	
	self eventHandler setProperty: #handlesMouseDown toValue: [true].
	
	self connect: self eventHandler signal: #mousePressed: toSelector: #delete.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #delete.