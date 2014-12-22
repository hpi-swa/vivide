drag/drop
startGrow: evt with: growHandle

	evt hand obtainHalo: self.
	positionOffset := evt cursorPoint - self target boundsInWorld bottomRight.
	self removeAllMorphsIn: (self submorphs copyWithout: growHandle).