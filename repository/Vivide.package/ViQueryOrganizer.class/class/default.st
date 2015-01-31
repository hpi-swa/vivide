instances
default

	self flag: #deprecated. "mt: Use ViQueryOrganizer active."
	^ default ifNil: [default := self new]