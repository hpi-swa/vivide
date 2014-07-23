private
removeEmptyLinesFor: submorphs in: bounds keepExtent: bool

	"Looks for blank columns or rows and removes them."

	| gridSize blankCols blankRows |
	gridSize := bounds extent.
	
	blankCols := Array new: gridSize x.
	blankRows := Array new: gridSize y.
	
	submorphs do: [:m |
		m left - bounds left +1 to: m right - bounds left do: [:col |
			blankCols at: (col min: gridSize x max: 1) put: col].
		m top - bounds top +1 to: m bottom - bounds top do: [:row |
			blankRows at: (row min: gridSize y max: 1) put: row]].
	blankCols := (blankCols withIndexCollect: [:ea :idx |
		ea ifNil: [idx + bounds left -1] ifNotNil: [nil]]) select: [:ea | ea notNil].
	blankRows := (blankRows withIndexCollect: [:ea :idx |
		ea ifNil: [idx + bounds top -1] ifNotNil: [nil]]) select: [:ea | ea notNil].
	submorphs do: [:m | | cx cy |
		cx := 0.
		cy := 0.
		blankCols do: [:col | m left > col ifTrue: [cx := cx-1]].
		blankRows do: [:row | m top > row	ifTrue: [cy := cy-1]].
		"bool == false ifTrue: [m extent: m extent - (cx @ cy)]."
		m topLeft: m topLeft + (cx @ cy)].