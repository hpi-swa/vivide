copying
postCopy

	super postCopy.
	definition := definition copy.
	self adoptOrganization: ViQueryOrganizer new.  