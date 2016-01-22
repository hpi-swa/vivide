definitions
deff21580561072954d8dcdb9744f5a6849
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'f2158056-1072-954d-8dcd-b9744f5a6849').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:36:18 pm')})).
(#sourceCode -> '[:step | (PackageOrganizer default
	packageOfSystemCategory: step baseClass category
	ifNone: [])
		ifNil: [step baseClass category]
		ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})