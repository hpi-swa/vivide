steps
step3cd2b495be4e004181d833250b0006e8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1f30e674-908f-d248-acfa-51961b671597').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1f30e674-908f-d248-acfa-51961b671597').
(#iconCode -> 'UiSilkIcons worldIcon').
(#id -> #'3cd2b495-be4e-0041-81d8-33250b0006e8').
(#isProperty -> false).
(#label -> 'MC Repositories').
(#next -> #'df738ebd-6882-8743-9dbb-746c1bba0641').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#priority -> 680).
(#view -> ViTreeViewExtended)
}))
})