initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self connect: self eventHandler signal: #mouseLeft: toSelector: #delete.	
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #delete.