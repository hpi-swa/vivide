definitions
defb7a301c0bb5ca14fa13db6e45ed4d473
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'b7a301c0-bb5c-a14f-a13d-b6e45ed4d473'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]].'); add: (#mapType->#all); add: (#block->[:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]]); yourself)