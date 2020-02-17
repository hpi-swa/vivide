steps
step1dce55fdc75244448ba23bba0f8d5f55
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:association |  SystemNavigation default allAccessesTo: association value from: association  key]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'8fe06b9c-b33e-ca49-87f2-1544b5e591f1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:23:46 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:association |  SystemNavigation default allAccessesTo: association value from: association  key]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8fe06b9c-b33e-ca49-87f2-1544b5e591f1').
(#iconCode -> 'nil').
(#id -> #'1dce55fd-c752-4444-8ba2-3bba0f8d5f55').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0594439a-451f-284e-bd02-716ce0b8336e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:23:46 am')
}))
})