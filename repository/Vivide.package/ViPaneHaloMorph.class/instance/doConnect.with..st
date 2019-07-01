drag/drop
doConnect: event with: connectHandle

	| ownerPanes |
	event hand obtainHalo: self.
	connectHandle position: event cursorPoint - (connectHandle extent // 2).

	self redrawLater.
	newOutputPane := (self target world morphsAt: event cursorPoint)
		detect: [:morph | ((morph isKindOf: ViPane) and: [(self target allOwners identityIncludes: morph) not]) and: [
			"Top-level pane in some other container."
			morph ownerChainPanes size = 1
				"Sibling pane in same container"
				or: [morph owner == self target owner]]
		] ifNone: [].
	self redrawLater.
	
	newOutputPane
		ifNil: [newOutputConnection endPosition: connectHandle center]
		ifNotNil: [:m |
			newOutputConnection
				withExtraWall: m
				do: [newOutputConnection endPosition: newOutputPane leftCenter]].