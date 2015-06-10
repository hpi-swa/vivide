as yet unclassified
doItReceiver

	^ self model ifNotNil: [:m |
		m firstNode at: #self ifAbsent: [m firstNode at: #receiver ifAbsent: []]]