steps
step08a45a5f4130084dbc955cbe8033b730
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'45c074fd-bfd5-3542-bf7c-200684b7f363').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'45c074fd-bfd5-3542-bf7c-200684b7f363').
(#iconCode -> 'nil').
(#id -> #'08a45a5f-4130-084d-bc95-5cbe8033b730').
(#isProperty -> false).
(#label -> 'Message tally').
(#next -> #'b44723c5-0063-0f4d-a4b7-1bd13591ae84').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MessageTally).
(#outputKind -> MessageTally).
(#priority -> 380).
(#view -> ViTreeViewExtended)
}))
})