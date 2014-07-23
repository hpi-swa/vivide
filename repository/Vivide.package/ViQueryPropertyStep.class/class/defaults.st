as yet unclassified
defaults

	^ (ViQueryOrganizer default stepById: #defaultProperties) ifNil: [
	
		ViQueryPropertyStep new
			id: #defaultProperties;
			definition: ViQueryStepDefinition defIconAndLabel;
			next: (ViQueryPropertyStep new
				definition: ViQueryStepDefinition defOrigin;
				setProperty: #labelColor toValue: #AAAAAA;
				yourself);
			register;
			yourself
	]