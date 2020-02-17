steps
step0594439a451f284ebd02716ce0b8336e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | {methodReference classSymbol. methodReference } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7d69d387-77f4-f64c-96b8-c5ac897c0766').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:24:20 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | {methodReference classSymbol. methodReference } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7d69d387-77f4-f64c-96b8-c5ac897c0766').
(#iconCode -> 'nil').
(#id -> #'0594439a-451f-284e-bd02-716ce0b8336e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0d761852-6cd4-fd4e-8264-1ec9396e2865').
(#properties -> (Dictionary newFrom: {
(#after -> #(#groups)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:24:20 am')
}))
})