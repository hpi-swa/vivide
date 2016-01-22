definitions
def236a8c89659c5349a716fd2bed0f7486
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: ['(no package)'] ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'236a8c89-659c-5349-a716-fd2bed0f7486').
(#inputKind -> MethodReference).
(#mapType -> #each).
(#outputKind -> String).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:37 am')})).
(#sourceCode -> '[:ref | (PackageOrganizer default packageOfClass: ref actualClass ifNone: [])
	ifNil: [''(no package)''] ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})