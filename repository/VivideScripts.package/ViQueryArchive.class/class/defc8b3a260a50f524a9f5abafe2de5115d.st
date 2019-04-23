definitions
defc8b3a260a50f524a9f5abafe2de5115d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'c8b3a260-a50f-524a-9f5a-bafe2de5115d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:08:06 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition]] value: in)]')})