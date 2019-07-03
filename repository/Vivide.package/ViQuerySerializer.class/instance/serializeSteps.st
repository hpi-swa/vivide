private - serialize
serializeSteps

	steps do: [:step |
		stepSelectors add: (self updateStep: step).
		
		"Ensure to archive also definitions that may be reachable but not registered."
		step definition ifNotNil: [:def | definitions add: def]].