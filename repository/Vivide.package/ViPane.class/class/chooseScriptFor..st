as yet unclassified
chooseScriptFor: objects

	| pane baseClasses |
	baseClasses := ViQueryStepDefinition collectBaseClassesForContext: objects.
	pane := ViPane new
		currentQuery: #formattedQueries asScript;
		objects: (ViQueryOrganizer active orderedSteps select: [:script |
			(script isGlobal not
				and: [script nextLabel notNil])
				and: [baseClasses includes: script baseClass]]);
		yourself.
	
	^ pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: [:script | script openScriptWith: objects]
		with: #value: