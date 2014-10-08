initialization
reset

	self model ifNil: [^ self].
	self updateForObjects: self model allObjects.