definitions
def7ad6ee079677ce46adbd8cb5503e46a9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:steps | steps sorted: [:s1 :s2 | s1 id <= s2 id]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'7ad6ee07-9677-ce46-adbd-8cb5503e46a9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:45:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:steps | steps sorted: [:s1 :s2 | s1 id <= s2 id]] value: in)]')
})