layout
layout: morph in: bounds

	| offset rowHeight |
	offset := morph topLeft + (self layoutInset @ self layoutInset).
	rowHeight := 0.
	
	self flag: #refactor. "mt: cellinset and layoutinset"
	morph submorphsDo: [:s |
		s visible ifTrue: [
			s fullBounds.
			(offset x + s width) > morph right ifTrue: [
				"new row"
				offset := morph left @ (offset y + rowHeight + self cellInset).
				rowHeight := 0].
			
			rowHeight := rowHeight max: s height.
			s
				topLeft: offset;
				layoutChanged.
			offset := (offset x + s width + self cellInset) @ offset y]].
	morph height: offset y - morph top + rowHeight - self layoutInset.