as yet unclassified
doConnect: event with: connectHandle

	event hand obtainHalo: self.
	connectHandle position: event cursorPoint - (connectHandle extent // 2).

	self redrawLater.
	newOutputPane := nil.
	(self target world morphsAt: event cursorPoint) reversed
		select: [:morph | ((morph isKindOf: ViPane) and: [morph ~~ self target]) and: [morph visibleBounds area > 0]]
		thenDo: [:morph | newOutputPane := morph].
	self redrawLater.