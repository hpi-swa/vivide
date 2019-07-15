steps
stepsenders
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'fa044112-0baa-3e4d-abc2-c54a247e5236').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:08:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fa044112-0baa-3e4d-abc2-c54a247e5236').
(#iconCode -> 'UiFugueIcons arrowStepIcon').
(#id -> #senders).
(#isProperty -> false).
(#label -> 'Senders').
(#next -> #'e67a3ef7-7a93-634e-86af-5740774f3bb9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:08:55 pm').
(#inputKind -> ByteSymbol).
(#notifier -> ViSqueakSystemChangeNotifier).
(#out -> Set).
(#view -> ViTreeViewExtended)
}))
})