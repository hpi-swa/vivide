initialization
initialize

	super initialize.
	self
		definition: (ViQueryStepDefinition new
			sourceCode: '';
			yourself);
		adoptOrganization: ViQueryOrganizer new.  