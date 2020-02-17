steps
stepd50e64dd2c00694f9ed1a81ee1b01b81
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:stamp | stamp value lastStep]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'dbadf3ad-cedb-e443-bc14-66d20a010aad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 8:47:26 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:stamp | stamp value lastStep]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dbadf3ad-cedb-e443-bc14-66d20a010aad').
(#iconCode -> 'nil').
(#id -> #'d50e64dd-2c00-694f-9ed1-a81ee1b01b81').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 8:47:26 am').
(#priority -> 4350)
}))
})