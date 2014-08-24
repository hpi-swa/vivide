definitions
def8a333e65d597484bb4fb657ca1751abf
	<definition>

	^ ((Dictionary new) add: (#inputKind->((Array new: 2) at: 1 put: String; at: 2 put: CompiledMethod; yourself)); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 August 2014 1:50:29 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'8a333e65-d597-484b-b4fb-657ca1751abf'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:string :method | | t n |
	t := SdCallgraphTracer new.
	t traceEvent: (SdTraceItEvent expression: string).
	n := t callgraph select: [:node | node clientMethod = method].
	t
		collectProperties: #(argumentObjectsAfter)
		inNodes: (n).
	n
	]'); add: (#mapType->#each); add: (#block->[:string :method | | t n |
	t := SdCallgraphTracer new.
	t traceEvent: (SdTraceItEvent expression: string).
	n := t callgraph select: [:node | node clientMethod = method].
	t
		collectProperties: #(argumentObjectsAfter)
		inNodes: (n).
	n
	]); yourself)