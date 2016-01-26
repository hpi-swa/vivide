private
processStepsGuarded
	"Hint: #haltOnce works fine."
	
	[
		self processSteps.
		
"		ViQueryChangeNotifier uniqueInstance
			stepEvaluated: self firstStep. --- to costly"
	]
		on: Error do: [:ex |
			| thisProcess errorWasInUIProcess description maliciousScript |
			self emergencyClearFor: ex.
			
			thisProcess := Processor activeProcess.
			errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: thisProcess.
			description := ex description.
			maliciousScript := (thisContext findContextSuchThat: [:ctxt |
				ctxt receiver isKindOf: ViQueryStep]) receiver.
			
			Project current addDeferredUIMessage: [
			
				(thisProcess suspendedContext findContextSuchThat: [:ctxt |
					ctxt method selector isDoIt]) in: [:scriptCtxt |
						thisProcess suspendedContext terminateTo: scriptCtxt.
						thisProcess stepToHome: scriptCtxt].

				ViQueryChangeNotifier uniqueInstance
					stepNotEvaluated: self firstStep
					becauseOf: {thisProcess. errorWasInUIProcess. description. maliciousScript}.
			].
		
			thisProcess suspend]