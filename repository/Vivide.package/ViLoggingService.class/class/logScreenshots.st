preferences
logScreenshots
	<preference: 'Log Screenshots'
		category: 'Vivide - Logging'
		description: 'Send screenshot with each logging event.'
		type: #Boolean>
	^ self loggingFlags at: #logScreenshots ifAbsent: [ true ]