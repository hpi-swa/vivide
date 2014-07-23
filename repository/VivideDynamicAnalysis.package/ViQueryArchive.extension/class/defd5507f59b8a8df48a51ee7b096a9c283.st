*VivideDynamicAnalysis-definitions
defd5507f59b8a8df48a51ee7b096a9c283
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdMethodCallNode); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d5507f59-b8a8-df48-a51e-e7b096a9c283'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:calls | calls collect: [:call | SdCallgraphManager default returnObjectForCall: call  ]]'); add: (#mapType->#all); add: (#block->[:calls | calls collect: [:call | SdCallgraphManager default returnObjectForCall: call  ]]); yourself)