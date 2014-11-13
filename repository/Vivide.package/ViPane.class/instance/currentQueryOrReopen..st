as yet unclassified
currentQueryOrReopen: aQueryStep
	"Open a new windows if shift is pressed."

	Sensor shiftPressed
		ifFalse: [self currentQuery: aQueryStep]
		ifTrue: [aQueryStep openQueryWith: self objects].