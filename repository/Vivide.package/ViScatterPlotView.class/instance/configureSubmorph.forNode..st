as yet unclassified
configureSubmorph: morph forNode: node 

	morph setProperty: #node toValue: node.

	morph
		balloonText: (node at: #point ifAbsent: [0@0]) printString;
		color: (node at: #color ifAbsent: [Color black]).

	morph on: #mouseEnter send: #mouseEnter:on: to: self.
	morph on: #mouseLeave send: #mouseLeave:on: to: self.
"	morph on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	morph on: #mouseLeaveDragging send: #mouseLeave:on: to: self."

	morph on: #mouseDown send: #mouseDown:on: to: self.
	morph on: #mouseUp send: #mouseUp:on: to: self.