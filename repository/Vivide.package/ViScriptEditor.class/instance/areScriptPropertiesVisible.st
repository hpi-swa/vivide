testing
areScriptPropertiesVisible
	"Does the user see a text representation of thisStep's properties?"
	
	^ (self fullSourceCode notNil
		and: [self fullSourceCodeInterval notNil])
		and: [self fullSourceCode size = self fullSourceCodeInterval size]