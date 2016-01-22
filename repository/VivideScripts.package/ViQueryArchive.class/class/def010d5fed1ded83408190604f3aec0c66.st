definitions
def010d5fed1ded83408190604f3aec0c66
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | pkg name]]).
(#class -> ViQueryMapDefinition).
(#id -> #'010d5fed-1ded-8340-8190-604f3aec0c66').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:00:32 pm')})).
(#sourceCode -> '[:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | pkg name]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})