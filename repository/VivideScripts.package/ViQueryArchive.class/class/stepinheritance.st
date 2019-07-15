steps
stepinheritance
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | {
	method methodClass withAllSuperclasses reversed,
	(method methodClass allSubclasses sortBy: [:a :b | a name <= b name]).
	method selector.
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'3f73a2f0-13d2-3a4e-aa20-2ed366310ce6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 1:57:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | {
	method methodClass withAllSuperclasses reversed,
	(method methodClass allSubclasses sortBy: [:a :b | a name <= b name]).
	method selector.
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3f73a2f0-13d2-3a4e-aa20-2ed366310ce6').
(#iconCode -> 'nil').
(#id -> #inheritance).
(#isProperty -> false).
(#label -> 'Inheritance').
(#next -> #'d26547cf-b2f4-db40-936b-bd8537ca6228').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 1:57:55 pm').
(#inputKind -> CompiledMethod).
(#priority -> 550).
(#view -> ViTreePlainView)
}))
})