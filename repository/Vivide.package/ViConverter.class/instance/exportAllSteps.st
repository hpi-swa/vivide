convert
exportAllSteps

	self extractSteps do: [:step |
		self writeStep: step asDictionary.
		self writeDefinition: step definition asDictionary].