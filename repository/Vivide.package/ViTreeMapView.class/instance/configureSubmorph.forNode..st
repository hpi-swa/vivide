as yet unclassified
configureSubmorph: morph forNode: node
	
	morph layoutPolicy: ProportionalLayout new.
	morph hResizing: #spaceFill; vResizing: #spaceFill.
	morph layoutInset: self margin.
	morph borderWidth: 1; borderColor: morph color muchDarker.

	node depth = 0 ifTrue: [^ self].

	(node at: #color ifAbsent: []) ifNotNil: [:c |
		morph color: c].

	morph balloonText: (node at: #balloonText ifAbsent: []).

	morph
		on: #startDrag
		send: #startDrag:event:source:
		to: self
		withValue: (node at: #object).
		
	morph on: #mouseEnter send: #mouseEnter:on: to: self.
	morph on: #mouseLeave send: #mouseLeave:on: to: self.
	morph on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	morph on: #mouseLeaveDragging send: #mouseLeave:on: to: self.