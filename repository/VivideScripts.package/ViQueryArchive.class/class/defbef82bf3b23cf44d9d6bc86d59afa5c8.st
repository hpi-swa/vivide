definitions
defbef82bf3b23cf44d9d6bc86d59afa5c8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:process | {#text -> (process caseOf: {
	[Project uiProcess] -> ['ui process'].
	[Processor backgroundProcess] -> ['idle process']}
	otherwise: [process name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'bef82bf3-b23c-f44d-9d6b-c86d59afa5c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 June 2014 10:13:14 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:process | {#text -> (process caseOf: {
	[Project uiProcess] -> [''ui process''].
	[Processor backgroundProcess] -> [''idle process'']}
	otherwise: [process name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})