definitions
def8f0021f92ab14144b627335dfe0f2977
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes :offset | offset contents: (classes ifEmpty: [0] ifNotEmpty: [:o | o first allSuperclasses size]). classes]).
(#class -> ViQueryMapDefinition).
(#id -> #'8f0021f9-2ab1-4144-b627-335dfe0f2977').
(#inputKind -> Behavior).
(#mapType -> #all).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 12:40:04 pm')})).
(#sourceCode -> '[:classes :offset | offset contents: (classes ifEmpty: [0] ifNotEmpty: [:o | o first allSuperclasses size]). classes]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})