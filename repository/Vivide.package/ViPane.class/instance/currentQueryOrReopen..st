accessing - convenience
currentQueryOrReopen: aQueryStep
	"Open a new windows if shift is pressed."

	Sensor shiftPressed
		ifFalse: [self currentQuery: aQueryStep]
		ifTrue: [aQueryStep openQueryWith: self objects].

	ViLoggingService trigger: {
		#message -> 'Script chosen from list.'.
		#scriptLabel -> (ViLabelService doObject: aQueryStep) asString}.