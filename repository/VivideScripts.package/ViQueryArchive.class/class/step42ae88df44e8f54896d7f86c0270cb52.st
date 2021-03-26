steps
step42ae88df44e8f54896d7f86c0270cb52
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:symbols | (symbols collect: [:symbol | SystemNavigation default allCallsOn: symbol]) reduce: [:a :b | a intersection: b]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'75e4fe9a-a549-c74a-a13c-df3c56488af5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '26 March 2021 12:01:39.575867 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:symbols | (symbols collect: [:symbol | SystemNavigation default allCallsOn: symbol]) reduce: [:a :b | a intersection: b]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'75e4fe9a-a549-c74a-a13c-df3c56488af5').
(#iconCode -> 'nil').
(#id -> #'42ae88df-44e8-f548-96d7-f86c0270cb52').
(#isProperty -> false).
(#label -> 'Senders (AND)').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#messageSet)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '26 March 2021 12:01:39.575867 pm').
(#inputKind -> ByteSymbol).
(#view -> ViTreeViewExtended)
}))
})