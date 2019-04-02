definitions
def5315c45d25f8f247ab3bdad6a2c522d7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5315c45d-25f8-f247-ab3b-dad6a2c522d7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:14:09 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:entry | entry asFileDirectory]]
		value: in) do: [:result | out addAll: result asList]]')})