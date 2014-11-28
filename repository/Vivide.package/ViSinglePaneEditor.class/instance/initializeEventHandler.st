dropping
initializeEventHandler

	super initializeEventHandler.
	
	self connect: self eventHandler signal: #mouseMoved: toSelector: #onMouseMove:.

	self connect: self eventHandler signal: #mouseLeft: toSelector: #clearDrawFlag: pattern: #(=dropPane).
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #clearDrawFlag: pattern: #(=dropPane).