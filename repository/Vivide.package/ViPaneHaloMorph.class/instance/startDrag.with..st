drag/drop
startDrag: evt with: dragHandle

	evt hand obtainHalo: self.
	self removeAllMorphsIn: (self submorphs copyWithout: dragHandle).
	positionOffset := evt cursorPoint - self target boundsInWorld topLeft.