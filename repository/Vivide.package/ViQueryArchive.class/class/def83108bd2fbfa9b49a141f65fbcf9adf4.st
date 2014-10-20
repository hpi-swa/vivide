definitions
def83108bd2fbfa9b49a141f65fbcf9adf4
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViFlagComment); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#labelColor->'007F00'); add: (#creationTimeStamp->'13 September 2013 6:56:36 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'83108bd2-fbfa-9b49-a141-f65fbcf9adf4'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:flag | #text -> (flag comment ifNil: [(''<i>\<'', flag symbol, ''\></i>'') asHtmlText])]'); add: (#mapType->#each); add: (#block->[:flag | #text -> (flag comment ifNil: [('<i>\<', flag symbol, '\></i>') asHtmlText])]); yourself)