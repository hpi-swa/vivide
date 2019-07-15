steps
stepsendersScripts
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'cd20d484-7acf-1d4b-8ad9-77735038cbf7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:53:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cd20d484-7acf-1d4b-8ad9-77735038cbf7').
(#iconCode -> 'nil').
(#id -> #sendersScripts).
(#isProperty -> false).
(#label -> 'Senders (Scripts)').
(#next -> #'afe34ca0-aa48-bd43-8eeb-7d8059eae2d1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:53:55 pm').
(#inputKind -> ByteSymbol)
}))
})