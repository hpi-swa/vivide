definitions
def87b889d0661d0a4f83112d1de481e39a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition not]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'87b889d0-661d-0a4f-8311-2d1de481e39a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 4:37:28 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:definitions | definitions select: [:def | def isSnippetDefinition not]] value: in)]')
})