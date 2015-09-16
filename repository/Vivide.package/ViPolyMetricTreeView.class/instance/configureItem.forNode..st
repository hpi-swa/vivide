as yet unclassified
configureItem: item forNode: node

	item itemMorph width: ((node at: #width ifAbsent: [0]) max: 5).
	item itemMorph height: ((node at: #height ifAbsent: [0]) max: 5).
	item itemMorph color: (node at: #color ifAbsent: [Color white]).
	
	item itemMorph balloonText: (node at: #balloonText ifAbsent: []).

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