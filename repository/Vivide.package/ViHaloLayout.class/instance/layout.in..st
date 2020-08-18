as yet unclassified
layout: decoration in: bounds

	| box cells flipped thickness |
	box := bounds.
	box := box outsetBy: decoration layoutInset.
	box := box outsetBy: decoration borderStyle inset.
	box := box outsetBy: decoration layoutOutset.
	box := box outsetBy: decoration outerBorderWidth.

	thickness := 20.

	cells := IdentityDictionary new.
	
	cells at: #left put: (box left - thickness @ box top corner: box left @ box bottom).
	cells at: #top put: (box left @ (box top - thickness) corner: box right @ box top).
	cells at: #right put: (box right @ box top corner: (box right + thickness) @ box bottom).
	cells at: #bottom put: (box left @ box bottom corner: box right @ (box bottom + thickness)).
	
	cells at: #topLeft put: (box topLeft - (thickness@thickness) corner: box topLeft).
	cells at: #topRight put: (box topRight - (0@thickness) corner: box topRight + (thickness@0)).
	cells at: #bottomLeft put: (box bottomLeft - (thickness@0) corner: box bottomLeft + (0@thickness)).
	cells at: #bottomRight put: (box bottomRight corner: box bottomRight + (thickness@thickness)).
	
	cells at: #center put: box.
	cells at: #hole put: bounds.

	flipped := IdentityDictionary new.
	
	flipped at: #left put: ((cells at: #left) flipBy: #horizontal centerAt: (cells at: #left) rightCenter).
	flipped at: #top put: ((cells at: #top) flipBy: #vertical centerAt: (cells at: #top) bottomCenter).
	flipped at: #right put: ((cells at: #right) flipBy: #horizontal centerAt: (cells at: #right) leftCenter).
	flipped at: #bottom put: ((cells at: #bottom) flipBy: #vertical centerAt: (cells at: #bottom) topCenter).
	
	flipped at: #topLeft put: ((cells at: #topLeft) translateBy: (cells at: #topLeft) extent).
	flipped at: #topRight put: ((cells at: #topRight) translateBy: (cells at: #topRight) extent * (-1 @ 1)).
	flipped at: #bottomLeft put: ((cells at: #bottomLeft) translateBy: (cells at: #bottomLeft) extent * (1 @ -1)).
	flipped at: #bottomRight put: ((cells at: #bottomRight) translateBy: (cells at: #bottomRight) extent * (-1 @ -1)).

	flipped at: #center put: box.
	flipped at: #hole put: bounds.

	decoration submorphsDo: [:m |
		m
			layoutInBounds: ((m edgeSide == #inside ifTrue: [flipped] ifFalse: [cells]) at: (m edgeCell ifNil: [#center]) ifAbsent: [box])
			positioning: m cellPositioning].