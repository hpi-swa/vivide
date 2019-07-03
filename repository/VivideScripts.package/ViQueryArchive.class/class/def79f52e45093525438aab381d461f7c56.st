definitions
def79f52e45093525438aab381d461f7c56
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:mDMailBox | mDMailBox mails]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'79f52e45-0935-2543-8aab-381d461f7c56').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:30:21 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:mDMailBox | mDMailBox mails]]
		value: in) do: [:result | out addAll: result asList]]')
})