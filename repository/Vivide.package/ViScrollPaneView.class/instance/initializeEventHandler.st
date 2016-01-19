initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	self eventHandler setProperty: #handlesMouseWheel toValue: [true].
	self connect: self eventHandler signal: #mouseWheelUp: toSelector: #zoomInEvent:.
	self connect: self eventHandler signal: #mouseWheelDown: toSelector: #zoomOutEvent:.