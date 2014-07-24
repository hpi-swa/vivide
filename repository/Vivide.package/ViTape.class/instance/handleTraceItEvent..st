system events
handleTraceItEvent: aTraceItEvent

	"self hasAnyKeyboard ifFalse: [^ self].
	
	self
		openTrace: (Vivide callgraphAt: aTraceItEvent)
		after: self focusedEditor."