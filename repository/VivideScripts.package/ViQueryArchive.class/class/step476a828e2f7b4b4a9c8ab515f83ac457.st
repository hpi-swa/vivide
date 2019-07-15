steps
step476a828e2f7b4b4a9c8ab515f83ac457
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'60d79da8-87dc-5044-954e-02ef93a30e39').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'60d79da8-87dc-5044-954e-02ef93a30e39').
(#iconCode -> 'nil').
(#id -> #'476a828e-2f7b-4b4a-9c8a-b515f83ac457').
(#isProperty -> false).
(#label -> nil).
(#next -> #'fcc66484-4caf-354f-8f24-d727784b3424').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2550)
}))
})