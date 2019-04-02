definitions
def6ffb588325e94643a9437dd170e4169a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'6ffb5883-25e9-4643-a943-7dd170e4169a').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})