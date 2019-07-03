definitions
def65c357c472de574cb2854b1be70e18e0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t2 first inheritsFrom: t1 first]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'65c357c4-72de-574c-b285-4b1be70e18e0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 5:15:08 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t2 first inheritsFrom: t1 first]] value: in)]')
})