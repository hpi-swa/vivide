preferences
useVivideDebugger
	<preference: 'Use Script Debugger'
		category: 'Vivide - Debugging'
		description: 'If enabled, opens the #debugger script with a debugger instance.'
		type: #Boolean>
	^ UseVivideDebugger ifNil: [ false ]