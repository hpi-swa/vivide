as yet unclassified
enableStackWatcher
	<preference: 'Stack Watcher'
		category: 'Vivide - Debugging'
		description: 'Starts a watchdog process that looks for suspicious patterns in the first n stack frames.'
		type: #Boolean>
	^ self default isRunning