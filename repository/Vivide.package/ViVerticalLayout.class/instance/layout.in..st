layout
layout: morph in: bounds

	| offset verticalSpace numSpaceFillers morphs noFillers |
	morphs := morph submorphs select: [:m | m visible and: [m disableTableLayout not]].
	verticalSpace := bounds height - self layoutInset top - self layoutInset bottom - (morphs size * (self cellInset - 1)).
	numSpaceFillers := 0.
	morphs do: [:m |
		m fullBounds.
		m vResizing ~= #spaceFill
			ifTrue: [verticalSpace := verticalSpace - m height]
			ifFalse: [numSpaceFillers := numSpaceFillers + 1]].
	noFillers := numSpaceFillers = 0.
	
	verticalSpace := verticalSpace max: 0.
	offset := morph topLeft + self layoutInset topLeft.
	morphs do: [:s |
		s
			width: morph width - self layoutInset left - self layoutInset right;
			topLeft: offset.
		
		s vResizing = #spaceFill ifTrue: [
			s height: verticalSpace // numSpaceFillers.
			numSpaceFillers := numSpaceFillers - 1.
			verticalSpace := verticalSpace - s height].
		
		"Workaround for morphs that change height if width changes (e.g., text morphs)."
		s fullBounds.
		
		offset := offset x @ (offset y + s height + self cellInset)].
	
	"Vertical shrink wrap if there are no space fillers."
	noFillers ifTrue: [
		morph height: offset y - morph top - self cellInset + self layoutInset bottom].