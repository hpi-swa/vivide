definitions
def79a5a7cfa1e8694a9c9a4d45e160f7f5
	<definition>

	^ ((Dictionary new) add: (#inputKind->MCRepository); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'79a5a7cf-a1e8-694a-9c9a-4d45e160f7f5'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]]'); add: (#mapType->#all); add: (#block->[:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]]); yourself)