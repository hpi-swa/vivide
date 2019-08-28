steps
step6d824fb8a3971a468c728c6635b89819
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:protocol :array | {{{ViSeparator for: protocol. #dummy}}}, array] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d8de08a5-45ea-7c43-a9de-33dc676d6f67').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 9:46:24.817728 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:protocol :array | {{{ViSeparator for: protocol. #dummy}}}, array] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d8de08a5-45ea-7c43-a9de-33dc676d6f67').
(#iconCode -> 'nil').
(#id -> #'6d824fb8-a397-1a46-8c72-8c6635b89819').
(#isProperty -> false).
(#label -> nil).
(#next -> #'b0a45afe-6a84-7a47-a7ee-76e55a59ca80').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 9:46:24.817728 am').
(#inputKind -> #(nil nil))
}))
})