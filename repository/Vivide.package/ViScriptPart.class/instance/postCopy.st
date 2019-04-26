copying
postCopy

	super postCopy.
	
	self setDefinition: self definition copy.
	self definition organization: self organization.
	self definition register.  

	self setNext: nil.

	self flag: #metaScript. "mt: What about copying meta-scripts and its organization?"