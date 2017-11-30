as yet unclassified
debugProcess: suspendedProcess

	| p errorWasInUIProcess |
	p := suspendedProcess.
	errorWasInUIProcess := Project current spawnNewProcessIfThisIsUI: p.

	WorldState addDeferredUIMessage: [ | debugger builder spec |
		"See Debugger>>#openNotifierContents:label:."
		debugger := (Debugger new
			process: p
			controller: nil "not needed for Morphic"
			context: p suspendedContext)
				errorWasInUIProcess: errorWasInUIProcess.

		builder := ToolBuilder default.
		spec := debugger buildNotifierWith: builder label: 'Endless recursion detected!' message: nil.
		debugger expandStack.
		builder openDebugger: spec.].
