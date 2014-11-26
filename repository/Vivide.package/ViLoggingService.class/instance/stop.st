process
stop

	process ifNotNil: [
		process terminate.
		process := nil].