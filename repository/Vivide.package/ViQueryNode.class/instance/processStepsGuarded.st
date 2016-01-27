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
			errorWasInUIProcess := thisProcess == Project current uiProcess.
			description := ex description.
			maliciousScript := (thisContext findContextSuchThat: [:ctxt |
				ctxt receiver isKindOf: ViQueryStep]) receiver.
			
			[
				| processToDebug |
				
				"1) Copy and clean-up process to debug."
				processToDebug := thisProcess copyStack.
				(processToDebug suspendedContext findContextSuchThat: [:ctxt |
					ctxt method selector isDoIt]) in: [:scriptCtxt |
						processToDebug popTo: scriptCtxt value: self].

				"2) Schedule GUI notification stuff."
				Project current addDeferredUIMessage: [
					ViQueryChangeNotifier uniqueInstance
						stepNotEvaluated: self firstStep
						becauseOf: {processToDebug. errorWasInUIProcess. description. maliciousScript}.
				].
			
				thisProcess resume.
			] fork.
		
			thisProcess suspend]