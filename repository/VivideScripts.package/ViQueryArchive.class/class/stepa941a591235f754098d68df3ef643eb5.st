steps
stepa941a591235f754098d68df3ef643eb5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'78e2a7f9-d268-3243-96e7-2b27859bd2bb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'78e2a7f9-d268-3243-96e7-2b27859bd2bb').
(#iconCode -> 'UiSilkIcons databaseIcon').
(#id -> #'a941a591-235f-7540-98d6-8df3ef643eb5').
(#isProperty -> false).
(#label -> 'MC File Repository').
(#next -> #'9d1d6fe1-e07c-9f4a-97aa-452c1fbcc9af').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MCRepository).
(#priority -> 670).
(#view -> ViTreeViewExtended)
}))
})