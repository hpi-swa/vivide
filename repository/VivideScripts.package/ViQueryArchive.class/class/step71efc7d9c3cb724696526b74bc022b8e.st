steps
step71efc7d9c3cb724696526b74bc022b8e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'bef82bf3-b23c-f44d-9d6b-c86d59afa5c8').
(#iconCode -> 'nil').
(#id -> #'71efc7d9-c3cb-7246-9652-6b74bc022b8e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'5636df93-3a8f-ea44-9406-e602b99e3101').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 6380)
}))
})