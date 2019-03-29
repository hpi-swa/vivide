definitions
def0d908938002b1e45b3661a5c6e671880
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0d908938-002b-1e45-b366-1a5c6e671880').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]')})