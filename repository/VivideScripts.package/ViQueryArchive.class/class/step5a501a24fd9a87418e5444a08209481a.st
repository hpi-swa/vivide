steps
step5a501a24fd9a87418e5444a08209481a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0c3cb364-b408-444e-be67-6c71c2bdee55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:48:45 pm')
})).
(#sourceCode -> '[:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0c3cb364-b408-444e-be67-6c71c2bdee55').
(#iconCode -> 'nil').
(#id -> #'5a501a24-fd9a-8741-8e54-44a08209481a').
(#isProperty -> false).
(#label -> 'Processes').
(#next -> #'93b6233e-a34e-f54d-9c6a-b7eeef30e075').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#isGlobal -> true).
(#priority -> 870).
(#view -> ViTreeViewExtended)
}))
})