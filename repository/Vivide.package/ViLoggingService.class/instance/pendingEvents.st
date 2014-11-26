accessing - private
pendingEvents

	^ pendingEvents ifNil: [pendingEvents := SharedQueue new]