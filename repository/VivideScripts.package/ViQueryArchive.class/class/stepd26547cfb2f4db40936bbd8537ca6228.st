steps
stepd26547cfb2f4db40936bbd8537ca6228
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :sel | (class includesSelector: sel) ifTrue: [class >> sel]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'753f301e-b355-874c-bfcf-680be25ffbaf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:00:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :sel | (class includesSelector: sel) ifTrue: [class >> sel]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'753f301e-b355-874c-bfcf-680be25ffbaf').
(#iconCode -> 'nil').
(#id -> #'d26547cf-b2f4-db40-936b-bd8537ca6228').
(#isProperty -> false).
(#label -> nil).
(#next -> #'34fc784f-f465-5b4d-8acf-4f6f5d16883e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:00:11 pm').
(#inputKind -> #(nil nil))
}))
})