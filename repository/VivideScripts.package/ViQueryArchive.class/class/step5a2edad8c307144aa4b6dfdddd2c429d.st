steps
step5a2edad8c307144aa4b6dfdddd2c429d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | {#text -> op definition description first}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5dd24fec-327b-a54e-af08-b4799ac81112').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | {#text -> op definition description first}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5dd24fec-327b-a54e-af08-b4799ac81112').
(#iconCode -> 'nil').
(#id -> #'5a2edad8-c307-144a-a4b6-dfdddd2c429d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e5bd3f6c-f63f-b148-89bc-82784354babd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Origin').
(#labelColor -> '#AAAAAA').
(#priority -> 1150)
}))
})