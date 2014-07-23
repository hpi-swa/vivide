definitions
def51d9c6f145c9814c8d676864979fb6a0
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 May 2014 2:35:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'51d9c6f1-45c9-814c-8d67-6864979fb6a0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]'); add: (#mapType->#each); add: (#block->[:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]); yourself)