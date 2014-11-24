as yet unclassified
initialize

	super initialize.
	self
		organization: ViQueryOrganizer new;
		definition: ViQueryStepDefinition new.
		
	self definition
		organization: self organization;    
		sourceCode: ''.