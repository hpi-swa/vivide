steps
step3f7e4a145a931c4484e012fc74706383
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'890cf6b2-0371-0b43-b442-d7fe6a99ecfa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 June 2014 3:49:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'890cf6b2-0371-0b43-b442-d7fe6a99ecfa').
(#iconCode -> 'nil').
(#id -> #'3f7e4a14-5a93-1c44-84e0-12fc74706383').
(#isProperty -> false).
(#label -> 'Classes').
(#next -> #'8c98ea10-5364-be4b-b343-835196faca7e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> PackageInfo).
(#outputKind -> ClassDescription).
(#priority -> 6140).
(#view -> ViTreeViewExtended)
}))
})