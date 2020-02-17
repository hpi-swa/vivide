steps
step1006fd361341dc4a8678ca7e4315063f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'df292972-deb5-624c-9ece-d3afe484dd06').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:08:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'df292972-deb5-624c-9ece-d3afe484dd06').
(#iconCode -> 'UiSilkIcons packageIcon').
(#id -> #'1006fd36-1341-dc4a-8678-ca7e4315063f').
(#isProperty -> false).
(#label -> 'Packages w/ LOC').
(#next -> #'ebce0b04-60c9-a340-a531-b5c1f93c9a20').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageOrganizer).
(#outputKind -> PackageInfo).
(#priority -> 10).
(#view -> ViTreeViewExtended)
}))
})