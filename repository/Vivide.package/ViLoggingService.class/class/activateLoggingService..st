preferences
activateLoggingService: aBoolean
	
	ActivateLoggingService := aBoolean.

	ActivateLoggingService
		ifTrue: [ViLoggingService default start]
		ifFalse: [ViLoggingService default stop].		