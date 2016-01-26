as yet unclassified
triggerShowError: ex

	| thisProcess errorWasInUIProcess description maliciousScript |
	thisProcess := Processor activeProcess.
	errorWasInUIProcess := Project current uiProcess == thisProcess.
	description := ex description.
	maliciousScript := nil.
	
	[
		| processToDebug |
		processToDebug := thisProcess copyStack.
		
		"1) Clean thisProcess to return from this call safely."
		(thisProcess suspendedContext findContextSuchThat: [:ctxt |
			ctxt method == (ViPane >> #triggerShowError:)]) in: [:thisMethodCtxt |
				thisProcess popTo: thisMethodCtxt sender value: self].		

		"2) Clean-up process to debug."
		(processToDebug suspendedContext findContextSuchThat: [:ctxt |
			ctxt receiver == self view]) in: [:viewCtxt |
				processToDebug popTo: viewCtxt value: self].
		
		"3) Schedule GUI notification stuff."
		Project current addDeferredUIMessage: [
			self showError: {
				processToDebug.
				errorWasInUIProcess.
				description.
				maliciousScript}].
			
		thisProcess resume.
	] fork.

	thisProcess suspend.