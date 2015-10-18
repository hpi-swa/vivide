support
forkAndSpyOn: block

	process := block fork.
	sut startWatchOnly: process.
	spy waitForNextSignal.