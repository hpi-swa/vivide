actions - open
openDebugger: aDebugger

	| editor window |
	#debugger asScript ifNotNil: [:script |
		aDebugger fullyExpandStack.
		^ self
			openScript: script
			withObjects: {aDebugger}].
	
	^ ToolBuilder open: aDebugger