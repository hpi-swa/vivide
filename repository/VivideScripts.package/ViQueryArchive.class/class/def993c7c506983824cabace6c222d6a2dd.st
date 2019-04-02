definitions
def993c7c506983824cabace6c222d6a2dd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	'Characters: ', text size, String cr,
	'Lines: ', text asString lines size, String cr,
	'--- BEGIN FILE (Excerpt) ---', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	'--- END FILE (Excerpt)---', String cr]]).
(#class -> ViQueryStepDefinition).
(#id -> #'993c7c50-6983-824c-abac-e6c222d6a2dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:36:26 pm')})).
(#sourceCode -> '[:text | 
	text isText ifFalse: [text asString, String cr] ifTrue: [
	''Characters: '', text size, String cr,
	''Lines: '', text asString lines size, String cr,
	''--- BEGIN FILE (Excerpt) ---'', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	''--- END FILE (Excerpt)---'', String cr]]')})