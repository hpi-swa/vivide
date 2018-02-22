initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self connect: self eventHandler signal: #mouseEntered: toSelector: #showToolbar:.