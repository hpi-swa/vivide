initialization
initialize

	super initialize.
	
	self organization: ViScriptOrganizer new.
	
	self notifier doSilently: [
		self
			register;
			definition: (ViScriptDefinition new
				adoptOrganization: self organization;
				yourself);
			 sourceCode: ''].