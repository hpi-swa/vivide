steps
stepa5b8674146bd5b47ab8da79879a3b859
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:project | { #text -> (project label allButFirst: 15) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'af9bff60-f0e9-9f4d-84f7-9d5f20e6f7f7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:project | { #text -> (project label allButFirst: 15) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'af9bff60-f0e9-9f4d-84f7-9d5f20e6f7f7').
(#iconCode -> 'nil').
(#id -> #'a5b86741-46bd-5b47-ab8d-a79879a3b859').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c2d0a6c2-91d4-2643-a28f-24b6ddd117c5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Name').
(#priority -> 2910)
}))
})