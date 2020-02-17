steps
step4bab61711c6c504b98ae553b38d3d886
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (ViTextStyler new styledTextFor: def sourceCode asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'1c5f9c9a-cf95-7946-b04f-bd367232d554').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:56:12 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (ViTextStyler new styledTextFor: def sourceCode asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1c5f9c9a-cf95-7946-b04f-bd367232d554').
(#iconCode -> 'nil').
(#id -> #'4bab6171-1c6c-504b-98ae-553b38d3d886').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0d9ec3b0-a6f2-3642-a305-d1b6a7827856').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:28:17 pm').
(#inputKind -> ViScriptDefinition).
(#priority -> 4890)
}))
})