steps
stepc399546cfcff9046bd660f7b1f946123
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'22c0349c-80c3-a744-b79a-34b8a256c7f4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:58 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'22c0349c-80c3-a744-b79a-34b8a256c7f4').
(#iconCode -> 'nil').
(#id -> #'c399546c-fcff-9046-bd66-0f7b1f946123').
(#isProperty -> false).
(#label -> nil).
(#next -> #'1fb44024-f23f-3244-bc57-a9be90f3ccdb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:58 am')
}))
})