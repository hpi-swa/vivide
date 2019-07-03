definitions
deff07de39efe4b1e4e9b8d76e2e6528e13
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:text | { #text -> (  
	text isText ifFalse: [text asString, String cr] ifTrue: [
	'Characters: ', text size, String cr,
	'Lines: ', text asString lines size, String cr,
	'--- BEGIN FILE (Excerpt) ---', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	'--- END FILE (Excerpt)---', String cr] ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f07de39e-fe4b-1e4e-9b8d-76e2e6528e13').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:36:26 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:text | { #text -> (  
	text isText ifFalse: [text asString, String cr] ifTrue: [
	''Characters: '', text size, String cr,
	''Lines: '', text asString lines size, String cr,
	''--- BEGIN FILE (Excerpt) ---'', String cr,
	(text asString truncateWithElipsisTo: 200), String cr,
	''--- END FILE (Excerpt)---'', String cr] ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})