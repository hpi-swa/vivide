convert
exportStep: step

	self writeStep: step asDictionary.
	self writeDefinition: step definition asDictionary.