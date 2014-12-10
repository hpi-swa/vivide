preferences
useClassicMode
	<preference: 'Use Classic Mode'
		category: 'Vivide'
		description: 'This mode hides script editing and dataflow changing facilities. Only predefined scripts and tools can be used.'
		type: #Boolean>
	^ UseClassicMode ifNil: [ false ]