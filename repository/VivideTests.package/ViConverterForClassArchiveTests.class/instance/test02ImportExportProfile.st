tests
test02ImportExportProfile

	| oldProfile |
	converter export.
	self
		assert: converter profile asDictionary
		equals: converter theClass profile.
	
	oldProfile := converter profile.
	converter profile: ViProfile newEmpty.
	self should: [converter import] raise: Warning. "Wrong id."
	
	converter profile id: oldProfile id.
	converter import.
	self
		assert: oldProfile organization orderedSteps size
		equals: converter profile organization orderedSteps size;
		assert: oldProfile organization orderedDefinitions size
		equals: converter profile organization orderedDefinitions size.