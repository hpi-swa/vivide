definitions
def60fafc9217ae4b40af17c13b35d42e25
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:24:01 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'60fafc92-17ae-4b40-af17-c13b35d42e25'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> (''<font color="#AAAAAA">'', (step definition
	ifNil: [''ref'']
	ifNotNil: [:def | def references size asString]), ''</font>'') asHtmlText ]'); add: (#mapType->#each); add: (#block->[:step | #text -> ('<font color="#AAAAAA">', (step definition
	ifNil: ['ref']
	ifNotNil: [:def | def references size asString]), '</font>') asHtmlText ]); yourself)