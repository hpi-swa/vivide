as yet unclassified
every: millisecondsOrDuration

	^ self new
		signalDelay: ((millisecondsOrDuration isKindOf: Duration)
			ifTrue: [millisecondsOrDuration asMilliSeconds]
			ifFalse: [millisecondsOrDuration]);
		yourself