tests
test03ResolveIds
	"All ids should be resolved after the import."
	
	converter exportAllSteps.
	converter profile: nil; organization: ViScriptOrganizer new.
	converter importAllDefinitions; importAllSteps.

	self
		assert: (converter organization orderedSteps
			noneSatisfy: [:step | (step instVarNamed: #next) isSymbol]);
		assert: (converter organization orderedSteps
			noneSatisfy: [:step | (step instVarNamed: #definition) isSymbol]).