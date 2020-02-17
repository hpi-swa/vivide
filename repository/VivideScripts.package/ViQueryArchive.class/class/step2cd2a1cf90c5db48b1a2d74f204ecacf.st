steps
step2cd2a1cf90c5db48b1a2d74f204ecacf
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls | cls withAllSuperclasses]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'727d02f2-e9b3-6e48-9af3-ebfca8b21d12').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls | cls withAllSuperclasses]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'727d02f2-e9b3-6e48-9af3-ebfca8b21d12').
(#iconCode -> 'nil').
(#id -> #'2cd2a1cf-90c5-db48-b1a2-d74f204ecacf').
(#isProperty -> false).
(#label -> 'All superclasses').
(#next -> #'cc9afa06-dafe-3f47-8613-5b6306c75ac4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ClassDescription).
(#priority -> 360).
(#view -> ViTreeViewExtended)
}))
})