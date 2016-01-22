definitions
defmethodReferenceToPackageName
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #methodReferenceToPackageName).
(#inputKind -> MethodReference).
(#mapType -> #each).
(#outputKind -> String).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref | (PackageOrganizer default packageOfMethod: ref ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})