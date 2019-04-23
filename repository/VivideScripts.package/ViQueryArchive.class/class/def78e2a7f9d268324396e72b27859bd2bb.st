definitions
def78e2a7f9d268324396e72b27859bd2bb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'78e2a7f9-d268-3243-96e7-2b27859bd2bb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs gather: [:rep |
	(MCRepositoryInspector repository: rep workingCopy: nil) packageList collect: [:pkgName |
		((PackageOrganizer default packageNames includes: pkgName asString)
			ifTrue: [PackageInfo named: pkgName asString]
			ifFalse: [pkgName asString]) -> rep]]] value: in)]')})