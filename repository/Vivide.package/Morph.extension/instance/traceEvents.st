*vivide-tracing
traceEvents
	"Generate call trees for user input events, e.g. mouse clicks or key presses."
	
	^ self
		valueOfProperty: #traceEvents
		ifAbsent: [false]