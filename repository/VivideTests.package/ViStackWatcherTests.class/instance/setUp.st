running
setUp

	super setUp.
	sut := ViStackWatcher new.
	spy := SignalSpy onSender: sut signal: #endlessRecursionDetected.