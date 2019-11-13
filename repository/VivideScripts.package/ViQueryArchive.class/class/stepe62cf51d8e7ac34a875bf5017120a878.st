steps
stepe62cf51d8e7ac34a875bf5017120a878
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:mCPackage :array | array flatten] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d6d7cf13-27fe-1c41-a8cd-10ca0d395060').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:16:53.933086 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:mCPackage :array | array flatten] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d6d7cf13-27fe-1c41-a8cd-10ca0d395060').
(#iconCode -> 'nil').
(#id -> #'e62cf51d-8e7a-c34a-875b-f5017120a878').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d64cb754-b0b7-5c4f-803e-c18c450b4216').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:16:53.933086 am').
(#inputKind -> #(nil nil))
}))
})