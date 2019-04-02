definitions
def7123313fd928c54e8ebfbc95323b5bd0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7123313f-d928-c54e-8ebf-bc95323b5bd0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:30:24 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]')})