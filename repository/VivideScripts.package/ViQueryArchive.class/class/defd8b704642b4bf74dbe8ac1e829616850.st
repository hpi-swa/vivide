definitions
defd8b704642b4bf74dbe8ac1e829616850
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'d8b70464-2b4b-f74d-be8a-c1e829616850').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:28:43 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]]
		value: in) do: [:result | out addAll: result asList]]')})