as yet unclassified
triggerShowError: ex

	| thisProcess errorWasInUIProcess description maliciousScript |
	thisProcess := Processor activeProcess.
	errorWasInUIProcess := Project current uiProcess == thisProcess.
	description := ex description.
	maliciousScript := nil.
	
	[
		| processToDebug |		
		"1) Copy and clean-up process to debug."
		processToDebug := thisProcess copyStack.
		(processToDebug suspendedContext findContextSuchThat: [:ctxt |
			ctxt receiver == self view]) in: [:viewCtxt |
				processToDebug popTo: viewCtxt value: self].
		
		"2) Schedule GUI notification stuff."
		Project current addDeferredUIMessage: [
			self showError: {
				processToDebug.
				errorWasInUIProcess.
				description.
				maliciousScript}].
			
		thisProcess resume.
	] fork.

	thisProcess suspend.