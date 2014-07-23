definitions
defbab5f2db8d7af64fa50c0dd4e0569db6
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:19:25 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'bab5f2db-8d7a-f64f-a50c-0dd4e0569db6'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> (step category ifNotNil: [:lbl | (''<font color="#008800">'', lbl, ''</font>'') asHtmlText])]'); add: (#mapType->#each); add: (#block->[:step | #text -> (step category ifNotNil: [:lbl | ('<font color="#008800">', lbl, '</font>') asHtmlText])]); yourself)