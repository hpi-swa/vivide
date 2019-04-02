definitions
defdd6f227ec7bc3843aa107deb3094959a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt receiver]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dd6f227e-c7bc-3843-aa10-7deb3094959a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:58:29 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt receiver]]
		value: in) do: [:result | out addAll: result asList]]')})