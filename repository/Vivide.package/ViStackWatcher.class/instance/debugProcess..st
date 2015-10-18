as yet unclassified
debugProcess: watchedProcess

	| oldUiProcess |
	oldUiProcess := watchedProcess.
	oldUiProcess suspend.
				
	WorldState addDeferredUIMessage: [ | debugger builder spec |
		"See Debugger>>#openNotifierContents:label:."
		debugger := (Debugger new
			process: oldUiProcess
			controller: nil "not needed for Morphic"
			context: oldUiProcess suspendedContext)
				errorWasInUIProcess: true.
		builder := ToolBuilder default.
		spec := debugger buildNotifierWith: builder label: 'Endless recursion detected!' message: nil.
		debugger expandStack.
		builder openDebugger: spec.].
							
	Project spawnNewProcess.