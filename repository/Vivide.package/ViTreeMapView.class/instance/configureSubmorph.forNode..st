updating - specific
configureSubmorph: morph forNode: node
	
	| label |	
	morph layoutPolicy: ProportionalLayout new.
	morph hResizing: #spaceFill; vResizing: #spaceFill.
	morph clipSubmorphs: false.
	
	node depth = 0 ifTrue: [^ self].

		(morph layoutFrame rightFraction - morph layoutFrame leftFraction / 
		(morph layoutFrame bottomFraction - morph layoutFrame topFraction)
	max: (
		morph layoutFrame bottomFraction - morph layoutFrame topFraction /
		(morph layoutFrame rightFraction - morph layoutFrame leftFraction)))
	> 20
		ifTrue: [morph cornerStyle: #square]
		ifFalse: [morph cornerStyle: #rounded].

	morph elevation: (node at: #elevation ifAbsent: [0]).
	morph layoutInset: (node hasChildren
		ifFalse: [self margin]
		ifTrue: [self margin @ (TextStyle defaultFont height * 1.2) truncated corner: self margin @ (self margin + morph elevation)]).

	node hasChildren ifTrue: [
		morph
			labelPosition: #topLeft;
			font: (Preferences standardDefaultTextFont emphasized: 1)].

	"morph cellInset: 15."
	label := node at: #text.
	morph label: label.

	(node at: #color ifAbsent: []) ifNotNil: [:c |
		morph color: c].
	morph color = morph borderColor
		ifTrue: [morph color: morph color darker].
	morph color isTransparent
		ifTrue: [morph color: (Color gray: 0.80)].

	morph borderWidth: 1.

	morph balloonText: (node at: #balloonText ifAbsent: [label]).

	morph
		on: #startDrag
		send: #startDrag:event:source:
		to: self
		withValue: (node at: #object).
	"Store object reference for multi-selection."
	morph setProperty: #object toValue: (node at: #object). 
		
	morph on: #mouseEnter send: #mouseEnter:on: to: self.
	morph on: #mouseLeave send: #mouseLeave:on: to: self.
	morph on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	morph on: #mouseLeaveDragging send: #mouseLeave:on: to: self.
	morph on: #mouseUp send: #mouseUp:on: to: self.
	morph on: #mouseDown send: #mouseDown:on: to: self.

	"Restore selection."
	self selectedItems
		detect: [:oldItem | (oldItem valueOfProperty: #object) = (node at: #object)
			or: [oldItem label = label]]
		ifFound: [:oldItem |
			self selectedItems remove: oldItem.
			self selectItemSilently: morph]
		ifNone: [].