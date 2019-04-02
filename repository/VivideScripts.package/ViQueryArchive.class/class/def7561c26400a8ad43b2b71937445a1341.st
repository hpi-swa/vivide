definitions
def7561c26400a8ad43b2b71937445a1341
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:categorizer | categorizer categories]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7561c264-00a8-ad43-b2b7-1937445a1341').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 3:49:08 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:categorizer | categorizer categories]]
		value: in) do: [:result | out addAll: result asList]]')})