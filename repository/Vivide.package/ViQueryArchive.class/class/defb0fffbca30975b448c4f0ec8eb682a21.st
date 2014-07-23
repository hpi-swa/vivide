definitions
defb0fffbca30975b448c4f0ec8eb682a21
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 June 2014 4:50:14 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'b0fffbca-3097-5b44-8c4f-0ec8eb682a21'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:cs | {#text -> (ChangeSet current = cs ifTrue: [(''<b>'', cs name, ''</b>'') asHtmlText] ifFalse: [cs name])}]'); add: (#mapType->#each); add: (#block->[:cs | {#text -> (ChangeSet current = cs ifTrue: [('<b>', cs name, '</b>') asHtmlText] ifFalse: [cs name])}]); yourself)