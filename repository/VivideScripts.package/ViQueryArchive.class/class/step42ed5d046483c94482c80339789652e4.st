steps
step42ed5d046483c94482c80339789652e4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'45571c4e-09ff-7346-a340-2a29e01cac6e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'45571c4e-09ff-7346-a340-2a29e01cac6e').
(#iconCode -> 'UiFugueIcons priceTagExclamationIcon').
(#id -> #'42ed5d04-6483-c944-82c8-0339789652e4').
(#isProperty -> false).
(#label -> 'Unclassified methods').
(#next -> #'24f23db6-299d-cc46-bb92-693cb90073d6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#outputKind -> MethodReference).
(#priority -> 690).
(#view -> ViTreeViewExtended)
}))
})