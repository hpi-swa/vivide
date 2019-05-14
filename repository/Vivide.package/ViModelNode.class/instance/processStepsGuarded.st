private
processStepsGuarded
	"Hint: #haltOnce works fine."
	
	[
		self processSteps.
		
"		ViQueryChangeNotifier uniqueInstance
			stepEvaluated: self firstStep. --- to costly"
	]
		on: Error do: [:ex |
			| thisProcess errorWasInUIProcess description |
			self emergencyClearFor: ex.

			thisProcess := Processor activeProcess.
			errorWasInUIProcess := thisProcess == Project current uiProcess.
			description := ex description.
			
			[
				| processToDebug maliciousScript |
				
				"1) Copy and clean-up process to debug."
				processToDebug := thisProcess copyStack.
				(processToDebug suspendedContext findContextSuchThat: [:ctxt |
					ctxt method selector isDoIt or: [ctxt receiver class == ViScriptInterpreter]]) in: [:scriptCtxt |
						processToDebug popTo: scriptCtxt value: self].

				maliciousScript := (thisProcess suspendedContext findContextSuchThat: [:ctxt |
					ctxt receiver class == ViScriptInterpreter]) receiver next.

				"2) Schedule GUI notification stuff."
				Project current addDeferredUIMessage: [
					ViScriptChangeNotifier active
						stepNotEvaluated: self firstStep
						becauseOf: {processToDebug. errorWasInUIProcess. description. maliciousScript}.
				].
			
				thisProcess resume.
			] fork.
		
			thisProcess suspend]