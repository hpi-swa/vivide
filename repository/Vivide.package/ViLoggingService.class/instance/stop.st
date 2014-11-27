process
stop

	process ifNotNil: [
		process terminate.
		process := nil].

	activityMonitor ifNotNil: [
		activityMonitor terminate.
		activityMonitor := nil].