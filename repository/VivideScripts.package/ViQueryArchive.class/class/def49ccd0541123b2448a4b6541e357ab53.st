definitions
def49ccd0541123b2448a4b6541e357ab53
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: ['(no package)']
	ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'49ccd054-1123-b244-8a4b-6541e357ab53').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:59:20 pm')})).
(#sourceCode -> '[:obj | (PackageOrganizer default packageOfClass: obj value class ifNone: [])
	ifNil: [''(no package)'']
	ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})