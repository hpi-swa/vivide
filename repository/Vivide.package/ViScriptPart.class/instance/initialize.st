as yet unclassified
initialize

	super initialize.
	self
		organization: ViQueryOrganizer new;
		register;
		definition: ViQueryStepDefinition new.
		
	self definition
		organization: self organization;
		register;    
		sourceCode: ''.