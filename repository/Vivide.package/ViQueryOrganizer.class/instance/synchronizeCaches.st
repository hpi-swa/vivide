maintenance
synchronizeCaches

	self flag: #workaround. "mt: Should never be necessary..."
	self steps valuesDo: [:step | (self orderedSteps includes: step)
		ifFalse: [self orderedSteps add: step]].
	self orderedSteps do: [:step | (self steps values includes: step)
		ifFalse: [self steps at: step id put: step]].
	
	self definitions valuesDo: [:def | (self orderedDefinitions includes: def)
		ifFalse: [self orderedDefinitions add: def]].
	self orderedDefinitions do: [:def | (self definitions values includes: def)
		ifFalse: [self definitions at: def id put: def]].