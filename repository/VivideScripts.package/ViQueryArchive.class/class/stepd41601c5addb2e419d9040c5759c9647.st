steps
stepd41601c5addb2e419d9040c5759c9647
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | 
	'{1}-{2}-{3}-{4}-{5}' format: {
		methodReference selector copyFrom: 3+1 to: 3+8.
		methodReference selector copyFrom: 3+9 to: 3+12.
		methodReference selector copyFrom: 3+13 to: 3+16.
		methodReference selector copyFrom: 3+17 to: 3+20.
		methodReference selector copyFrom: 3+21 to: 3+32.	
	}
	]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'dbd1a944-8a6a-8545-99c1-8dbd3aeacad4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:42:23.130086 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | 
	''{1}-{2}-{3}-{4}-{5}'' format: {
		methodReference selector copyFrom: 3+1 to: 3+8.
		methodReference selector copyFrom: 3+9 to: 3+12.
		methodReference selector copyFrom: 3+13 to: 3+16.
		methodReference selector copyFrom: 3+17 to: 3+20.
		methodReference selector copyFrom: 3+21 to: 3+32.	
	}
	]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dbd1a944-8a6a-8545-99c1-8dbd3aeacad4').
(#iconCode -> 'nil').
(#id -> #'d41601c5-addb-2e41-9d90-40c5759c9647').
(#isProperty -> false).
(#label -> 'Scripts in Archive').
(#next -> #'76abd232-f0e2-2044-8211-6504f20d1cfe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:42:23.130086 pm').
(#inputKind -> MethodReference).
(#priority -> 205)
}))
})