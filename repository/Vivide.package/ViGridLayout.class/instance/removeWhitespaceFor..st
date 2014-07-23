as yet unclassified
removeWhitespaceFor: submorphs
	"Looks for blank columns or rows and removes them."

	| gridSize blankCols blankRows |
	gridSize := 0@0.
	submorphs do: [:m | gridSize := gridSize max: m gridCell - (1@1) + m gridSpan].
	
	blankCols := Array new: gridSize x.
	blankRows := Array new: gridSize y.
	
	submorphs do: [:m |
		m gridCell x to: m gridCell x + m gridSpan x-1 do: [:col |
			blankCols at: col put: col].
		m gridCell y to: m gridCell y + m gridSpan y-1 do: [:row |
			blankRows at: row put: row]].
	blankCols := (blankCols withIndexCollect: [:ea :idx |
		ea ifNil: [idx] ifNotNil: [nil]]) select: [:ea | ea notNil].
	blankRows := (blankRows withIndexCollect: [:ea :idx |
		ea ifNil: [idx] ifNotNil: [nil]]) select: [:ea | ea notNil].
	submorphs do: [:m | | cx cy |
		cx := m gridCell x.
		cy := m gridCell y.
		blankCols do: [:col | cx > col ifTrue: [cx := cx-1]].
		blankRows do: [:row | cy > row	ifTrue: [cy := cy-1]].
		m gridCell: cx @ cy].