steps
step969d8eb99007b041b58ea1fd25a2d732
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object class == ViSeparator ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'335dc170-fec4-de42-a955-63c658bd56ee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object class == ViSeparator ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'335dc170-fec4-de42-a955-63c658bd56ee').
(#iconCode -> 'nil').
(#id -> #'969d8eb9-9007-b041-b58e-a1fd25a2d732').
(#isProperty -> true).
(#label -> nil).
(#next -> #'4b56b921-6888-f246-8e50-b89ba30bbd13').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')
}))
})