accessing
contextStackIndex

	^ self debugger ifNotNil: [:dbg | dbg contextStackIndex]