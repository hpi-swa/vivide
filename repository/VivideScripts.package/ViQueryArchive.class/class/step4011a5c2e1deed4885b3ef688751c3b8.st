steps
step4011a5c2e1deed4885b3ef688751c3b8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d38699e6-bec1-344c-9a51-ed500e0bf6dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d38699e6-bec1-344c-9a51-ed500e0bf6dd').
(#iconCode -> 'nil').
(#id -> #'4011a5c2-e1de-ed48-85b3-ef688751c3b8').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8aa22994-8321-5647-823f-8e9203115b01').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am').
(#inputKind -> CompiledMethod).
(#priority -> 200).
(#view -> ViTreeViewExtended)
}))
})