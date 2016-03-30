layout
layout: aMorph in: newBounds

	| offset margins |
	margins := aMorph layoutInset.
	margins isNumber ifTrue: [margins := 0@0 corner: 0@0]. "default value is 0"
	
	offset := aMorph topLeft + (0@1) + margins topLeft.
	aMorph submorphsDo: [:s |
		s visible ifTrue: [ | noMargins |
			noMargins := s valueOfProperty: #noMargins ifAbsent: false.  
			s
				width: aMorph width - (noMargins
					ifTrue: [0] ifFalse: [margins left + margins right]);
				layoutChanged;
				topLeft: offset - (noMargins
					ifFalse: [0] ifTrue: [margins left @ 0]).
			s fullBounds.
			s disableTableLayout ifFalse: [
				offset := offset x @ (offset y + s height + 1)]]].
	
	aMorph height: offset y - aMorph top + margins bottom.