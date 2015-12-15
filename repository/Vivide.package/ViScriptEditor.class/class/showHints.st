preferences
showHints

	<preference: 'Show Hints'
		category: #'Vivide'
		description: 'Provide hints like possible input kinds while creating scripts.'
		type: #Boolean>

	^ ShowHints ifNil: [true]