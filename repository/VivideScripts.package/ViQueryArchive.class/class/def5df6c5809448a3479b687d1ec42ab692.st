definitions
def5df6c5809448a3479b687d1ec42ab692
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'5df6c580-9448-a347-9b68-7d1ec42ab692').
(#inputKind -> PackageInfo).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})