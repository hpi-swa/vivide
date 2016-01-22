definitions
deff7a4445758fa9242a06b06f5a7784f40
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:entries | entries reject: [:e | e isDirectory]]).
(#class -> ViQueryMapDefinition).
(#id -> #'f7a44457-58fa-9242-a06b-06f5a7784f40').
(#inputKind -> DirectoryEntry).
(#mapType -> #all).
(#outputKind -> DirectoryEntryFile).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:50:48 pm')})).
(#sourceCode -> '[:entries | entries reject: [:e | e isDirectory]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})