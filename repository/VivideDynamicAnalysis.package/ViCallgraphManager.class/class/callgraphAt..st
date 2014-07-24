as yet unclassified
callgraphAt: aTraceEvent

	| cg |
	cg := SdCallgraph new traceEvent: aTraceEvent.
	
	"self callgraphs
		at: aTraceEvent hash
		ifAbsentPut: [SdCallgraph new traceEvent: aTraceEvent]."

	cg isEmpty ifTrue: [Cursor wait showWhile: [
		(aTraceEvent isTestCall and: [aTraceEvent testClass inheritsFrom: UiTestCase]) ifTrue: [
			cg selectedCategories: (Vivide tracingCategoriesFor: {UiTestCase. aTraceEvent testClass new subjectClass new})].
		aTraceEvent receiver ifNotNil: [:rcvr |
			cg selectedCategories: (Vivide tracingCategoriesFor: {rcvr})].

		SdCallgraphTracer new
			callgraph: cg;
			trace]].
	
	^ cg