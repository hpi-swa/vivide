steps
stepf3edfb21509fde4c91095d13eb6b90be
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:set | set asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'075b7101-f948-024e-b6f1-41773a59b1fb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 2:08:29 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:set | set asArray]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'075b7101-f948-024e-b6f1-41773a59b1fb').
(#iconCode -> 'nil').
(#id -> #'f3edfb21-509f-de4c-9109-5d13eb6b90be').
(#isProperty -> false).
(#label -> nil).
(#next -> #'26886f3d-3ac0-aa48-adf2-d31758e2e4ae').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 2:08:29 pm').
(#inputKind -> Set).
(#priority -> 5710).
(#view -> ViTreeViewExtended)
}))
})