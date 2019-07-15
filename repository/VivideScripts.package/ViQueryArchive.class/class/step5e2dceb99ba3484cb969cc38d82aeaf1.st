steps
step5e2dceb99ba3484cb969cc38d82aeaf1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6a90006f-4daf-604a-add5-f6fa7102b541').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6a90006f-4daf-604a-add5-f6fa7102b541').
(#iconCode -> 'UiFugueIcons balloonExclamationIcon').
(#id -> #'5e2dceb9-9ba3-484c-b969-cc38d82aeaf1').
(#isProperty -> false).
(#label -> 'Unsent Messages').
(#next -> #'233b181d-fccc-094d-8b70-ba191cfe05ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:06:50 pm').
(#inputKind -> PackageInfo).
(#outputKind -> MethodReference).
(#priority -> 750).
(#view -> ViTreeViewExtended)
}))
})