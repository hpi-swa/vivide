definitions
def906173710b508444a85396023a9105ba
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'90617371-0b50-8444-a853-96023a9105ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:49:40 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')})