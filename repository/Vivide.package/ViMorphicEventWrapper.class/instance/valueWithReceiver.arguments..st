evaluating
valueWithReceiver: anObject arguments: someObjects
	"Morph>>handleFocusEvent: anEvent"
	
	| cg event |
	"Event filter."
	event := someObjects first.
	((event isMouse and: [event isMouseUp or: [event isMouseDown]])
		or: [event isKeyboard and: [event isKeystroke]])
			ifFalse: [^ super valueWithReceiver: anObject arguments: someObjects].

	"Instance filter."
	(morphs includes: anObject) ifFalse: [
		^ super valueWithReceiver: anObject arguments: someObjects].	
	
	cg := SdCallgraph new
		traceEvent: (SdTraceItEvent
			userInputEventExpression: 'self clientMethod valueWithReceiver: anObject arguments: someObjects'
			context: thisContext
			receiver: self);
		selectedCategories: categories.
	tracer callgraph: cg.

	[^ tracer profile: #duration] ensure: [cg explore]