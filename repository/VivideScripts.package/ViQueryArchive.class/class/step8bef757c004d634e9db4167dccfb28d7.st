steps
step8bef757c004d634e9db4167dccfb28d7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'b367485a-5dec-c94b-ad94-5f745f651aea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b367485a-5dec-c94b-ad94-5f745f651aea').
(#iconCode -> 'UiSilkIcons bulletFeedIcon').
(#id -> #'8bef757c-004d-634e-9db4-167dccfb28d7').
(#isProperty -> false).
(#label -> 'Changed/Update Aspects').
(#next -> #'fca5ba47-1c0b-0b4d-8c61-7eca1715c0c5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Class).
(#priority -> 280).
(#view -> ViTreeViewExtended)
}))
})