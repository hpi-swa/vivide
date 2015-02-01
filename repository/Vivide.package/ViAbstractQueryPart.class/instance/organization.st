organization - accessing
organization

	self flag: #migration. "mt: Remove this lazy initialization if no scripts out there point to it anymore."
	^ organization ifNil: [organization := ViQueryOrganizer default]