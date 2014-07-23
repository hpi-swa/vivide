layout
layout: aMorph in: newBounds

	| offset |
	offset := aMorph topLeft + (0@1).
	aMorph submorphsDo: [:s |
		s visible ifTrue: [
			s
				width: aMorph width;
				layoutChanged;
				topLeft: offset.
			s fullBounds.
			s disableTableLayout ifFalse: [
				offset := offset x @ (offset y + s height + 1)]]].
	
	aMorph height: offset y - aMorph top.