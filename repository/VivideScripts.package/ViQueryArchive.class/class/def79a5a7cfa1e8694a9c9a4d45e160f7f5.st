definitions
def79a5a7cfa1e8694a9c9a4d45e160f7f5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'79a5a7cf-a1e8-694a-9c9a-4d45e160f7f5').
(#inputKind -> MCRepository).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})