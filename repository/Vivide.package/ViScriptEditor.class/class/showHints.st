preferences
showHints

	<preference: 'Show Hints'
		category: #'Vivide - Script Editor'
		description: 'Provide hints like possible input kinds while creating scripts.'
		type: #Boolean>

	^ ShowHints ifNil: [true]