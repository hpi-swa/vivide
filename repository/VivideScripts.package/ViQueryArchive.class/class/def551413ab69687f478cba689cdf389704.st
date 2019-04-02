definitions
def551413ab69687f478cba689cdf389704
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'551413ab-6968-7f47-8cba-689cdf389704').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')})