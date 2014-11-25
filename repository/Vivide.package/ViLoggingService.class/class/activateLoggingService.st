preferences
activateLoggingService
	<preference: 'Activate Logging Service'
		category: 'Vivide'
		description: 'Send usage data to external logging server?'
		type: #Boolean>
	^ ActivateLoggingService ifNil: [ false ]