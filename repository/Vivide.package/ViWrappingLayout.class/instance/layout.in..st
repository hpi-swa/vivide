layout
layout: morph in: bounds

	| offset rowHeight |
	isLayouting == true ifTrue: [^ self].
	isLayouting := true.  
	
	offset := morph topLeft + (self layoutInset @ self layoutInset).
	rowHeight := 0.
	
	self flag: #refactor. "mt: cellinset and layoutinset"
	morph submorphs withIndexDo: [:s :i |
		s visible ifTrue: [
			s fullBounds.
			((offset x + s width) > morph right and: [i > 1]) ifTrue: [
				"new row"
				offset := morph left @ (offset y + rowHeight + self cellInset).
				rowHeight := 0].
			
			rowHeight := rowHeight max: s height.
			s
				topLeft: offset;
				layoutChanged.
			offset := (offset x + s width + self cellInset) @ offset y]].
	morph extentInOwner: morph width @ ((offset y - morph top + rowHeight - self layoutInset) max: 15).
	"morph height: ((offset y - morph top + rowHeight - self layoutInset) max: 20)"
	
	isLayouting := false.