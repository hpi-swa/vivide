testing
isScriptSourceCodeVisible
	"Does the user see a text representation of thisStep's properties?"
	
	^ self fullSourceCode notNil and: [self scriptSourceCode = self visibleSourceCode]