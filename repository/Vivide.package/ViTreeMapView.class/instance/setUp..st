initialization
setUp: aScript

	super setUp: aScript.
	
	aggregationBlock := aScript valueOfProperty: #aggregate.
	margin := aScript valueOfProperty: #margin.