steps
stepc748e47d64235843afa440590487b99d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c6d233ab-76a4-1344-af09-74f78f9a36ad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c6d233ab-76a4-1344-af09-74f78f9a36ad').
(#iconCode -> 'nil').
(#id -> #'c748e47d-6423-5843-afa4-40590487b99d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'a3b79801-e8b5-1848-820e-b0abaa56e111').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am').
(#inputKind -> MethodReference).
(#priority -> 1000)
}))
})