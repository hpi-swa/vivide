definitions
def705e187cd0f6f64d9f4ff2eef6af67a6
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:16:41 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'705e187c-d0f6-f64d-9f4f-f2eef6af67a6'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText])]'); add: (#mapType->#each); add: (#block->[:step | #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText])]); yourself)