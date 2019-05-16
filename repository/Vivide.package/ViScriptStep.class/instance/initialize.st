initialization
initialize

	super initialize.
	self
		organization: ViScriptOrganizer new;
		register;
		definition: (ViScriptDefinition new
			adoptOrganization: self organization;
			yourself).
			
	self notifier doSilently: [self sourceCode: ''].