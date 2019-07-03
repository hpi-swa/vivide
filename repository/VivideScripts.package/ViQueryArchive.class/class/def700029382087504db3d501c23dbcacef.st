definitions
def700029382087504db3d501c23dbcacef
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:mails | mails sorted: [:a :b | a date >= b date]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'70002938-2087-504d-b3d5-01c23dbcacef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '22 March 2018 5:17:08 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:mails | mails sorted: [:a :b | a date >= b date]] value: in)]')
})