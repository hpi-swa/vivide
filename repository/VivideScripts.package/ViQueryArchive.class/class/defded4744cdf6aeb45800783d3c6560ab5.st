definitions
defded4744cdf6aeb45800783d3c6560ab5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'ded4744c-df6a-eb45-8007-83d3c6560ab5').
(#inputKind -> Association).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})