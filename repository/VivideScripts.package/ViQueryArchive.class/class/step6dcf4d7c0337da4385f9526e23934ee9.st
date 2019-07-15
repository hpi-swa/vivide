steps
step6dcf4d7c0337da4385f9526e23934ee9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj symbol ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'bcc7a989-2ef1-f24a-a72f-c7b1d9e9d48e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj symbol ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bcc7a989-2ef1-f24a-a72f-c7b1d9e9d48e').
(#iconCode -> 'nil').
(#id -> #'6dcf4d7c-0337-da43-85f9-526e23934ee9').
(#isProperty -> true).
(#label -> nil).
(#next -> #'86247f76-5b43-d748-82a2-b2d9e56e443a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:51:45 pm').
(#priority -> 3340)
}))
})