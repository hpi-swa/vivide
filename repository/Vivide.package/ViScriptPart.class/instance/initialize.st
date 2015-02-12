initialization
initialize

	super initialize.
	self
		organization: ViQueryOrganizer new;
		register;
		definition: (ViQueryStepDefinition new
			organization: self organization;
			register;
			sourceCode: '';
			yourself).