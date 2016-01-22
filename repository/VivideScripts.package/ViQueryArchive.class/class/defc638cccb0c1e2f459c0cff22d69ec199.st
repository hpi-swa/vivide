definitions
defc638cccb0c1e2f459c0cff22d69ec199
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'c638cccb-0c1e-2f45-9c0c-ff22d69ec199').
(#inputKind -> PackageInfo).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})