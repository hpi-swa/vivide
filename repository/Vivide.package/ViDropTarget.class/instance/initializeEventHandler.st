initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.

	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #clearDropRectangle.