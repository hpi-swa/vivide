definitions
def0b7a9508db024244ac2b4ea7ff772056
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), '.', pkg name asLowercase]]).
(#class -> ViQueryMapDefinition).
(#id -> #'0b7a9508-db02-4244-ac2b-4ea7ff772056').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:17:34 pm')})).
(#sourceCode -> '[:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), ''.'', pkg name asLowercase]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})