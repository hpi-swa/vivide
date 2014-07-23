layout
layout: morph in: bounds

	| offset |
	offset := morph topLeft + self layoutInset topLeft.

	morph submorphsDo: [:s |
		s visible ifTrue: [
			s
				width: morph width - self layoutInset left - self layoutInset right;
				topLeft: offset;
				layoutChanged.
			s fullBounds.
			offset := offset x @ (offset y + s height + self cellInset)]].
	
	morph height: offset y - morph top - self cellInset + self layoutInset bottom.