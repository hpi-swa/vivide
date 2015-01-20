copying
postCopy

	super postCopy.
	definition := definition copy.
	self adoptOrganization: ViQueryOrganizer new.
	
	self flag: #meta. "mt: What about copying meta-scripts and its organization?"