definitions
def5ca204944fecd94a8cc4ad0ae673270b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:definitions | definitions select: [:def | def isSnippetDefinition]]).
(#class -> ViQueryMapDefinition).
(#id -> #'5ca20494-4fec-d94a-8cc4-ad0ae673270b').
(#inputKind -> ViQueryStepDefinition).
(#mapType -> #all).
(#outputKind -> ViQuerySnippetDefinition).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:08:06 pm')})).
(#sourceCode -> '[:definitions | definitions select: [:def | def isSnippetDefinition]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})