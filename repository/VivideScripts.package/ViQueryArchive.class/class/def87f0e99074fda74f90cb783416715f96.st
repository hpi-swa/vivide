definitions
def87f0e99074fda74f90cb783416715f96
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'87f0e990-74fd-a74f-90cb-783416715f96').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]] value: in)]')
})