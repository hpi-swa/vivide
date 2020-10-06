graph
configureSelectionOn: container

	container on: #mouseDown send: #startDrag:on: to: self.
	container on: #mouseMove send: #doDrag:on: to: self.
	container on: #mouseUp send: #endDrag:on: to: self.
	
	container on: #mouseEnter send: #showCross:on: to: self.
	container on: #mouseLeave send: #hideCross:on: to: self.
	container on: #mouseEnterDragging send: #showCross:on: to: self.
	container on: #mouseLeaveDragging send: #hideCross:on: to: self.

	"More configurable interaction:"
	container on: #keyStroke send: #keystroke:on: to: self.