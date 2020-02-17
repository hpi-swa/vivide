steps
step8ebc1c715396204d98e9e545b22d0823
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , (ViLabelStringService doObject: group first) , '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e35033ec-dd91-fe4b-8f59-13e3c734740e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , (ViLabelStringService doObject: group first) , ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e35033ec-dd91-fe4b-8f59-13e3c734740e').
(#iconCode -> 'nil').
(#id -> #'8ebc1c71-5396-204d-98e9-e545b22d0823').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6b83183f-11b1-294b-bfa7-11e681f78ad8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
}))
})