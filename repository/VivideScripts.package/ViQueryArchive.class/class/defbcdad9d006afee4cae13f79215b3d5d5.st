definitions
defbcdad9d006afee4cae13f79215b3d5d5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bcdad9d0-06af-ee4c-ae13-f79215b3d5d5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})