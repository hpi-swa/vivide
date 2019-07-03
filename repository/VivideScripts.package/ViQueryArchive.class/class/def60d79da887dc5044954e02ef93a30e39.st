definitions
def60d79da887dc5044954e02ef93a30e39
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'60d79da8-87dc-5044-954e-02ef93a30e39').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]')
})