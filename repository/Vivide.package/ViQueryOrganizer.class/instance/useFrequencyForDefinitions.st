accessing - convenience
useFrequencyForDefinitions

	| histogram |
	histogram := IdentityBag new.
	self orderedSteps do: [:query | query allStepsDo: [:step | histogram add: step definition]].
	^ histogram