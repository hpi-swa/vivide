steps
stepartifacts
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]).
(#className -> #ViScriptDefinition).
(#id -> #'e06097d2-1a38-4845-ae0e-d68113bd2be5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 October 2014 7:29:40 am')
})).
(#sourceCode -> '[:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e06097d2-1a38-4845-ae0e-d68113bd2be5').
(#iconCode -> 'nil').
(#id -> #artifacts).
(#isProperty -> false).
(#label -> 'Artifacts').
(#next -> #'11ba89fb-aa6d-264a-92c1-cba5506abae1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 October 2014 7:29:40 am').
(#view -> ViArtifactListView2)
}))
})