steps
step8e0086dce5def948b5b5b355fc568037
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'eeac0bd5-d8d9-2f4f-ac60-7fd29bee41b8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 3:25:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'eeac0bd5-d8d9-2f4f-ac60-7fd29bee41b8').
(#iconCode -> 'nil').
(#id -> #'8e0086dc-e5de-f948-b5b5-b355fc568037').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 3:25:39 pm')
}))
})