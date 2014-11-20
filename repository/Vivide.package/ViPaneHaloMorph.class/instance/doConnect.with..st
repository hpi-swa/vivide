drag/drop
doConnect: event with: connectHandle

	| ownerPanes |
	event hand obtainHalo: self.
	connectHandle position: event cursorPoint - (connectHandle extent // 2).

	self redrawLater.

	newOutputPane := (self target world morphsAt: event cursorPoint)
		detect: [:morph | ((morph isKindOf: ViPane) and: [morph ~~ self target]) and: [
			"Top-level pane in some other container."
			morph ownerChainPanes size = 1
				"Sibling pane in same container"
				or: [morph owner == self target owner]]
		] ifNone: [].
	self redrawLater.