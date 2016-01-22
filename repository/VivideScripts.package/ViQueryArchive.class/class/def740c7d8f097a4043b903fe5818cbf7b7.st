definitions
def740c7d8f097a4043b903fe5818cbf7b7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:entries | entries select: [:entry | entry isDirectory]]).
(#class -> ViQueryMapDefinition).
(#id -> #'740c7d8f-097a-4043-b903-fe5818cbf7b7').
(#inputKind -> DirectoryEntry).
(#mapType -> #all).
(#outputKind -> DirectoryEntryDirectory).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:entries | entries select: [:entry | entry isDirectory]].').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})