steps
stepf50a996dd0c83e46bfc9b54c71e930d2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'14956abb-b944-4f4e-8155-41339243d931').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:25 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'14956abb-b944-4f4e-8155-41339243d931').
(#iconCode -> 'nil').
(#id -> #'f50a996d-d0c8-3e46-bfc9-b54c71e930d2').
(#isProperty -> false).
(#label -> nil).
(#next -> #'4291e65f-ca68-f04b-bbb8-41cf2734c087').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:31:32 pm').
(#inputKind -> PackageInfo).
(#outputKind -> Behavior).
(#priority -> 730).
(#view -> ViTreeViewExtended)
}))
})