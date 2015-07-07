definitions
def06e068712a400646909616438991067d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:18:19 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'06e06871-2a40-0646-9096-16438991067d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> (step label ifNotNil: [:lbl | (''<b>'', lbl, ''</b>'') asHtmlText])]'); add: (#mapType->#each); add: (#block->[:step | #text -> (step label ifNotNil: [:lbl | ('<b>', lbl, '</b>') asHtmlText])]); yourself)