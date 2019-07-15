steps
step1b4dabb4cd8f014595b9f7b0b6a2ccd5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'f7529f37-e9c8-7b4b-a182-d4677089bb61').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f7529f37-e9c8-7b4b-a182-d4677089bb61').
(#iconCode -> 'UiSilkIcons worldEditIcon').
(#id -> #'1b4dabb4-cd8f-0145-95b9-f7b0b6a2ccd5').
(#isProperty -> false).
(#label -> 'Changes to working copy').
(#next -> #'bf1af6b6-8f8a-f746-9c2a-1ab4fad1e340').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#priority -> 70).
(#view -> ViTreeViewExtended)
}))
})