as yet unclassified
configureItem: item forNode: node

	item borderColor: Color black.

	item itemMorph width: ((node at: #width ifAbsent: [0]) max: 5).
	item itemMorph height: ((node at: #height ifAbsent: [0]) max: 5).

	item itemMorph color: (node at: #color ifAbsent: [Color white]).
	item itemMorph setProperty: #originalColor toValue: item itemMorph color.
	item color: (node at: #backgroundColor ifAbsent: [Color transparent]).
	
	item itemMorph balloonText: (node at: #balloonText ifAbsent: [node at: #text ifAbsent: []]).
	item balloonText: item itemMorph balloonText.

	item setProperty: #object toValue: (node at: #object). 

	"Interactive stuff"
	item
		on: #startDrag
		send: #startDrag:event:source:
		to: self
		withValue: (node at: #object).
		
	item on: #mouseEnter send: #mouseEnter:on: to: self.
	item on: #mouseLeave send: #mouseLeave:on: to: self.
	item on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	item on: #mouseLeaveDragging send: #mouseLeave:on: to: self.
	item on: #mouseUp send: #mouseUp:on: to: self.
	item on: #mouseDown send: #mouseDown:on: to: self.