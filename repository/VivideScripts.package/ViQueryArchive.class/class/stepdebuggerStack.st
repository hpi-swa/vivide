steps
stepdebuggerStack
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'3c662290-020c-cf4d-853e-8062a9ff1cb7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 5:10:33 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3c662290-020c-cf4d-853e-8062a9ff1cb7').
(#iconCode -> 'nil').
(#id -> #debuggerStack).
(#isProperty -> false).
(#label -> 'Suspended context').
(#next -> #'2fdb319c-765a-1a43-863e-792e14de2c1e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Process).
(#outputKind -> Context).
(#priority -> 570).
(#view -> ViTreeViewExtended)
}))
})