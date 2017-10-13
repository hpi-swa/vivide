initialization
initializeEventHandler

	self connect: self scroller eventHandler signal: #mouseWheelUp: toSelector: #zoomInEvent:.
	self connect: self scroller eventHandler signal: #mouseWheelDown: toSelector: #zoomOutEvent:.