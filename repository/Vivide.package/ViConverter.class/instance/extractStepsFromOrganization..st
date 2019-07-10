extract
extractStepsFromOrganization: scriptOrganizer

	| result |
	result := Set new.
	scriptOrganizer orderedSteps do: [:step |
		result addAll: step allSteps].
	^ result