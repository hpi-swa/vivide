steps
step88256e17259b9c43973b01a903ccc633
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d8b70464-2b4b-f74d-be8a-c1e829616850').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:28:43 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d8b70464-2b4b-f74d-be8a-c1e829616850').
(#iconCode -> 'nil').
(#id -> #'88256e17-259b-9c43-973b-01a903ccc633').
(#isProperty -> false).
(#label -> 'Test results').
(#next -> #'8137f2f3-0fb0-d44b-a9b5-af172fdbc83d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> TestCase class).
(#outputKind -> Association).
(#priority -> 5240).
(#view -> ViTreeViewExtended)
}))
})