as yet unclassified
startDrag: evt with: dragHandle

	evt hand obtainHalo: self.
	self removeAllMorphsIn: (self submorphs copyWithout: dragHandle).
	positionOffset := evt cursorPoint - target topLeft.