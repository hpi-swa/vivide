as yet unclassified
initializeEventHandler

	self connect: self scroller eventHandler signal: #mouseWheelUp: to: self scroller horizontalScrollBar selector: #decreaseValueBySingleStep.
	self connect: self scroller eventHandler signal: #mouseWheelDown: to: self scroller horizontalScrollBar selector: #increaseValueBySingleStep.