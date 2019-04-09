testing
areScriptPropertiesVisible
	"Does the user see a text representation of thisStep's properties?"
	
	^ self isWizardActive not and: [self fullSourceCode size = self fullSourceCodeInterval size]