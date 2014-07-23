*VivideContextS-definitions
def103fe5776dc60f48a8c91a1b197cc008
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'10 January 2014 10:39:59 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'103fe577-6dc6-0f48-a8c9-1a1b197cc008'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:layer :context | context contents gather: [:cls | cls layeredMethods
	collect: [:lm | lm partialMethods detect: [:pm | pm layers includes: layer] ifNone: []]
	thenSelect: [:obj | obj notNil ]]]'); add: (#mapType->#each); add: (#block->[:layer :context | context contents gather: [:cls | cls layeredMethods
	collect: [:lm | lm partialMethods detect: [:pm | pm layers includes: layer] ifNone: []]
	thenSelect: [:obj | obj notNil ]]]); yourself)