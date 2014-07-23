maintenance
registerAllReachableStepsAndDefinitions

	self orderedSteps do: [:step | step allStepsDo: [:s |
		s register.
		s definition ifNotNil: [:def |
			def register.
			def isMapDefinition ifTrue: [
				def updateSetDefinition ifNotNil: [:d | d register].
				def updateClearDefinition ifNotNil: [:d | d register]]]]].