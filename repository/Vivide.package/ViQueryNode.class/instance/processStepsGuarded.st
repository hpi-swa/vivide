private
processStepsGuarded
	"Hint: #haltOnce works fine."
	
	self removeKey: #errorOnSteps ifAbsent: [].
	[
		self processSteps.
		
"		ViQueryChangeNotifier uniqueInstance
			stepEvaluated: self firstStep. --- to costly"
	]
		on: Error do: [:ex |
			ViQueryChangeNotifier uniqueInstance
				stepNotEvaluated: self firstStep
				becauseOf: (ViShallowException for: ex).
			"ViObjectHistory lastExceptions addObject: (ViShallowException for: ex).
			ActiveVivide ifNotNil: [:vivide | vivide showLastExceptions]."
			self emergencyClearFor: ex.
			"ex signal"]