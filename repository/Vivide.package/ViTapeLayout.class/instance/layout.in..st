layout
layout: aMorph in: newBounds

	| offset |
	offset := aMorph topLeft.
	aMorph submorphsDo: [:s | 
		s isOverlayConnector
			ifTrue: [s comeToFront]
			ifFalse: [
				s
					height: aMorph height;
					topLeft: offset.
				offset := (offset x + s fullBounds width -1) @ offset y]].
	aMorph width: offset x - aMorph left.