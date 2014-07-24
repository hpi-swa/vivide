preferences
useVivideDebugger
	<preference: 'Use Vivide Debugger'
		category: 'Vivide'
		description: 'Let''s you choose between default debugging and Vivide integration.'
		type: #Boolean>
	^ UseVivideDebugger ifNil: [ true ]