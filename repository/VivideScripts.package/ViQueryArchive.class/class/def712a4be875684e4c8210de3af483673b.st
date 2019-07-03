definitions
def712a4be875684e4c8210de3af483673b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:packages | packages gather: [:pkg |
	pkg classes]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'712a4be8-7568-4e4c-8210-de3af483673b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:packages | packages gather: [:pkg |
	pkg classes]] value: in)]')
})