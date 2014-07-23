tests
test06DefaultViews
	
	(ViQueryStepDefinition class organization listAtCategoryNamed: #'defaults - views')
		do: [:s |
			self
				assert: (ViQueryStepDefinition perform: s) == (ViQueryStepDefinition perform: s);
				assert: (ViQueryStepDefinition perform: s) isViewDefinition].