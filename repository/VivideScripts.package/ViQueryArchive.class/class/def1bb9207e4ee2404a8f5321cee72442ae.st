definitions
def1bb9207e4ee2404a8f5321cee72442ae
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'1bb9207e-4ee2-404a-8f53-21cee72442ae').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})