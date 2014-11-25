as yet unclassified
pendingEvents

	^ pendingEvents ifNil: [pendingEvents := SharedQueue new]