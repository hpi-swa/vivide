definitions
defe7585112caafc545a5351552869584d1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e7585112-caaf-c545-a535-1552869584d1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')
})