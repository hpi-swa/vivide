definitions
def2ce2840e16d19f4385322ba99b6eebef
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	'Characters: ', text size, String cr,
	'Lines: ', text asString lines size, String cr,
	'--- BEGIN FILE (Excerpt) ---', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	'--- END FILE (Excerpt)---', String cr]]).
(#class -> ViQueryMapDefinition).
(#id -> #'2ce2840e-16d1-9f43-8532-2ba99b6eebef').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:36:26 pm')})).
(#sourceCode -> '[:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	''Characters: '', text size, String cr,
	''Lines: '', text asString lines size, String cr,
	''--- BEGIN FILE (Excerpt) ---'', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	''--- END FILE (Excerpt)---'', String cr]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})