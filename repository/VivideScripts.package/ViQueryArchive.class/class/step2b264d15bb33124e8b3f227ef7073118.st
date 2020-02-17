steps
step2b264d15bb33124e8b3f227ef7073118
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'41378129-7ca7-4543-b705-a8858a9837ea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'41378129-7ca7-4543-b705-a8858a9837ea').
(#iconCode -> 'nil').
(#id -> #'2b264d15-bb33-124e-8b3f-227ef7073118').
(#isProperty -> true).
(#label -> nil).
(#next -> #'53385c7b-cff8-c842-8efd-e43b039db34b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 5:02:56 pm').
(#priority -> 4480)
}))
})