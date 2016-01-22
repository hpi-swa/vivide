definitions
def331ef87824d5f442967604b6c451895a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'331ef878-24d5-f442-9676-04b6c451895a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:02:31 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method]]
		value: in) do: [:result | out addAll: result asList]]')})