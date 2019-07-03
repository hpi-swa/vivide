definitions
deff7529f37e9c87b4ba182d4677089bb61
	<definition>

	^ (Dictionary newFrom: {
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
})