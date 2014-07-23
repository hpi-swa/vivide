testing - object
isUiProcess

	^ isUiProcess ifNil: [
		| ctxt |
		ctxt := self object suspendedContext.
		[ctxt notNil & isUiProcess isNil] whileTrue: [
			(ctxt receiver == Project
				and: [ctxt method selector == #spawnNewProcess])
					ifTrue: [isUiProcess := true].
			ctxt := ctxt sender].
		isUiProcess ifNil: [isUiProcess := false]]