copying
postCopy

	super postCopy.
	
	definition := definition copy.
	definition organization: self organization.
	definition register.  

	next := nil.

	self flag: #meta. "mt: What about copying meta-scripts and its organization?"