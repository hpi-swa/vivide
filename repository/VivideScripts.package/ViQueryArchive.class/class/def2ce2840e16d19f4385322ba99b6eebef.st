definitions
def2ce2840e16d19f4385322ba99b6eebef
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 5:36:26 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'2ce2840e-16d1-9f43-8532-2ba99b6eebef'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	''Characters: '', text size, String cr,
	''Lines: '', text asString lines size, String cr,
	''--- BEGIN FILE (Excerpt) ---'', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	''--- END FILE (Excerpt)---'', String cr]]'); add: (#mapType->#each); add: (#block->[:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	'Characters: ', text size, String cr,
	'Lines: ', text asString lines size, String cr,
	'--- BEGIN FILE (Excerpt) ---', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	'--- END FILE (Excerpt)---', String cr]]); yourself)