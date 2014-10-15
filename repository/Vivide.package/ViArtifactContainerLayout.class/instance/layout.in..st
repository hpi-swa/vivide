layout
layout: aMorph in: newBounds

	| offset |
	offset := aMorph topLeft + (0@1) + self margins topLeft.
	aMorph submorphsDo: [:s |
		s visible ifTrue: [ | noMargins |
			noMargins := s valueOfProperty: #noMargins ifAbsent: false.  
			s
				width: aMorph width - (noMargins
					ifTrue: [0] ifFalse: [self margins left + self margins right]);
				layoutChanged;
				topLeft: offset - (noMargins
					ifFalse: [0] ifTrue: [self margins left @ 0]).
			s fullBounds.
			s disableTableLayout ifFalse: [
				offset := offset x @ (offset y + s height + 1)]]].
	
	aMorph height: offset y - aMorph top + self margins bottom.