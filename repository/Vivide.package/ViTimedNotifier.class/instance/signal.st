as yet unclassified
signal

	self shouldSignal ifFalse: ["Early return." ^ self].

	self notifyEvent: nil.
	self shouldSignal ifTrue: [(self future: self signalDelay) signal].