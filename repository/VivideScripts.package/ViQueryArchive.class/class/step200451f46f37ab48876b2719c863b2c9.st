steps
step200451f46f37ab48876b2719c863b2c9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:mails | | bag |
	bag := Bag new.

	mails do: [:ea | bag add: ea sender].
	
	bag sortedCounts]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f009b85e-fe0f-544e-be07-32772fd16970').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:31 am')
})).
(#sourceCode -> '[:in :out | (
	[:mails | | bag |
	bag := Bag new.

	mails do: [:ea | bag add: ea sender].
	
	bag sortedCounts]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f009b85e-fe0f-544e-be07-32772fd16970').
(#iconCode -> 'nil').
(#id -> #'200451f4-6f37-ab48-876b-2719c863b2c9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'44f56402-c21b-a04c-8d76-cecb592b4509').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:31 am')
}))
})