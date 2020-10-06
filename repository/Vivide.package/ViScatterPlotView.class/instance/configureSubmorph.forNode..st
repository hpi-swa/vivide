items
configureSubmorph: morph forNode: node 

	morph setProperty: #node toValue: node.

	morph
		balloonText: (node at: #tooltip ifAbsent: [(node at: #point ifAbsent: [0@0]) printString]) asString;
		color: (node at: #color ifAbsent: [Color black]).

	morph on: #mouseEnter send: #mouseEnter:on: to: self.
	morph on: #mouseLeave send: #mouseLeave:on: to: self.
"	morph on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	morph on: #mouseLeaveDragging send: #mouseLeave:on: to: self."

	morph on: #mouseDown send: #mouseDown:on: to: self.
	morph on: #mouseUp send: #mouseUp:on: to: self.

	"More configurable interaction."
	morph on: #doubleClick send: #doubleClick:on: to: self.