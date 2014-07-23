layout
layout: aMorph in: newBounds

	| offset verticalSpace numSpaceFillers |
	verticalSpace := newBounds height.
	numSpaceFillers := 0.
	aMorph submorphsDo: [:morph | 
		morph fullBounds.
		morph vResizing ~= #spaceFill
			ifTrue: [verticalSpace := verticalSpace - morph height]
			ifFalse: [numSpaceFillers := numSpaceFillers + 1]].
	
	verticalSpace := verticalSpace max: 0.
	offset := 0.
	aMorph submorphsDo: [:morph |
		morph vResizing ~= #spaceFill
			ifTrue: [
				morph bounds: (newBounds topLeft + (0@offset)
					corner: newBounds topRight + (0@(offset+morph height)))]
			ifFalse: [
				morph bounds: (newBounds topLeft + (0@offset)
					corner: newBounds topRight + (0@(offset+(verticalSpace // numSpaceFillers)))).
				numSpaceFillers := numSpaceFillers - 1.
				verticalSpace := verticalSpace - morph height].
		offset := offset + morph height].