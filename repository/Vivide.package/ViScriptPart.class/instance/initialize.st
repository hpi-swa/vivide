initialization
initialize

	super initialize.
	self
		organization: ViQueryOrganizer new;
		definition: (ViQueryStepDefinition new
			organization: self organization;
			sourceCode: '';
			yourself).