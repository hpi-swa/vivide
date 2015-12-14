copying
postCopy

	super postCopy.
	
	definition := definition copy.
	definition organization: self organization.
	definition register.  

	next := nil.

	self flag: #metaScript. "mt: What about copying meta-scripts and its organization?"