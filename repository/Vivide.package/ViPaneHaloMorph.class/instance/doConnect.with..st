drag/drop
doConnect: event with: connectHandle

	event hand obtainHalo: self.
	connectHandle position: event cursorPoint - (connectHandle extent // 2).

	self redrawLater.
	newOutputPane := (self target world morphsAt: event cursorPoint)
		detect: [:morph | (morph isKindOf: ViPane) and: [morph wantsToBeAttachedTo: self target]] ifNone: [].
	self redrawLater.
	
	newOutputConnection ifNotNil: [:connectionMorph |
		newOutputPane
			ifNil: [connectionMorph endPosition: connectHandle center]
			ifNotNil: [:m |
				connectionMorph
					withExtraWall: m
					do: [connectionMorph endPosition: m leftCenter]]].