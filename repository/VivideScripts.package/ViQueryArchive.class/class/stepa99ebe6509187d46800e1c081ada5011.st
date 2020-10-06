steps
stepa99ebe6509187d46800e1c081ada5011
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:rows | rows sorted: [:a :b | (a at: 'stride_lengths') asNumber < (b at: 'stride_lengths') asNumber]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'362c3dc4-07ec-9e48-94a9-82dc0c124912').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:27:52.853911 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:rows | rows sorted: [:a :b | (a at: ''stride_lengths'') asNumber < (b at: ''stride_lengths'') asNumber]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'362c3dc4-07ec-9e48-94a9-82dc0c124912').
(#iconCode -> 'nil').
(#id -> #'a99ebe65-0918-7d46-800e-1c081ada5011').
(#isProperty -> false).
(#label -> nil).
(#next -> #'60a1569b-51d7-8947-8a00-7a82f2528572').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:27:52.853911 am')
}))
})