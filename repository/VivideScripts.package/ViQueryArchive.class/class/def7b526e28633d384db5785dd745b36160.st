definitions
def7b526e28633d384db5785dd745b36160
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:18:56 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'7b526e28-633d-384d-b578-5dd745b36160'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step | #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | (''<font color="#000088">'', lbl, ''</font>'') asHtmlText]])]'); add: (#mapType->#each); add: (#block->[:step | #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | ('<font color="#000088">', lbl, '</font>') asHtmlText]])]); yourself)