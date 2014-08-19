definitions
def5df6c5809448a3479b687d1ec42ab692
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'5df6c580-9448-a347-9b68-7d1ec42ab692'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]]'); add: (#mapType->#all); add: (#block->[:pkgs | pkgs gather: [:pkg |
	pkg mcPackage in: [:mcp |
		mcp hasWorkingCopy
			ifFalse: [#()] ifTrue: [(mcp workingCopy changesRelativeToRepository:
				(mcp workingCopy repositoryGroup repositories in: [:repos |
					repos detect: [:repo | (repo isKindOf: MCCacheRepository) not] ifNone: [repos first]])) operations]]]]); yourself)