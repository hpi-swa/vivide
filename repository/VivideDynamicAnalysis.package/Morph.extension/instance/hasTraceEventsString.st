*VivideDynamicAnalysis
hasTraceEventsString
	"menu addUpdating: #hasTraceEventsString action: #changeTraceEvents."

	^ (self traceEvents
		ifTrue: ['<on>']
		ifFalse: ['<off>']), 'trace user input events' translated