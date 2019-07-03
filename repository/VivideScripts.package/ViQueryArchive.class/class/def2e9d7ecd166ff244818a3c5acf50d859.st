definitions
def2e9d7ecd166ff244818a3c5acf50d859
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2e9d7ecd-166f-f244-818a-3c5acf50d859').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')
})