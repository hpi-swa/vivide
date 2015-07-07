definitions
def6658de62dc227f42b43f47b99ddfadee
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'16 November 2013 4:52:02 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'6658de62-dc22-7f42-b43f-47b99ddfadee'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:stamp | 
	#text -> (stamp value lastStep ifNil: [''NO STEP''] ifNotNil: [:step | step definition
		ifNil: [''FILL STEP'']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]])]'); add: (#mapType->#each); add: (#block->[:stamp | 
	#text -> (stamp value lastStep ifNil: ['NO STEP'] ifNotNil: [:step | step definition
		ifNil: ['FILL STEP']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]])]); yourself)