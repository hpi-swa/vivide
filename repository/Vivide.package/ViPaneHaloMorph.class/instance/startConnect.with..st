drag/drop
startConnect: event with: connectHandle

	event hand obtainHalo: self.
	self addMorph: connectHandle.
	self removeAllMorphsIn: (self submorphs copyWithout: connectHandle).
	positionOffset := event cursorPoint - target topLeft.