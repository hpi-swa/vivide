definitions
def45c074fdbfd53542bf7c200684b7f363
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'45c074fd-bfd5-3542-bf7c-200684b7f363').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]')})