steps
step43dad8cdaa5af540bf915c505349e324
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object class == ViSeparator ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'1cd0d451-7d6e-3f41-9ae4-86f88b5b436b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:34:28 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object class == ViSeparator ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1cd0d451-7d6e-3f41-9ae4-86f88b5b436b').
(#iconCode -> 'nil').
(#id -> #'43dad8cd-aa5a-f540-bf91-5c505349e324').
(#isProperty -> true).
(#label -> nil).
(#next -> #'ec77d931-b152-e14d-83f0-ca3d29ac8796').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:34:28 pm')
}))
})