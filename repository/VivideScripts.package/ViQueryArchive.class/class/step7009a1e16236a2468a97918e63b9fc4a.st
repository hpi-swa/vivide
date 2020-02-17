steps
step7009a1e16236a2468a97918e63b9fc4a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | {
	method.
	(method allLiterals select: [:lit | lit value isBehavior]) collect: [:ea | ea value] as: Set } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'a49d1b45-f2ad-7c45-a9c8-182a050df365').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:19:11.643572 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | {
	method.
	(method allLiterals select: [:lit | lit value isBehavior]) collect: [:ea | ea value] as: Set } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a49d1b45-f2ad-7c45-a9c8-182a050df365').
(#iconCode -> 'nil').
(#id -> #'7009a1e1-6236-a246-8a97-918e63b9fc4a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d89f82e6-53a8-324f-a182-a02ff606e39c').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:19:11.641572 pm')
}))
})