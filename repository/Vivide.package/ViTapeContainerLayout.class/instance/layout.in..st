layout
layout: aMorph in: newBounds

	| offset verticalSpace |
	offset := aMorph topLeft.
	verticalSpace := (newBounds height - aMorph submorphs size + 1) // aMorph submorphs size.

	aMorph submorphsDo: [:s | 
		s
			width: aMorph width;
			height: verticalSpace;
			topLeft: offset.
		offset := offset x @ (offset y + verticalSpace + 1)].