steps
step95c74daf50da9d48956ba1e377ae9019
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'def35c40-345a-5047-9824-66d86dfdfbc4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'def35c40-345a-5047-9824-66d86dfdfbc4').
(#iconCode -> 'nil').
(#id -> #'95c74daf-50da-9d48-956b-a1e377ae9019').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8c98b390-c0ff-494e-94e4-be9cfaeea24c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')
}))
})