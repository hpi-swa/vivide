definitions
def4847dd5868b2864d94ae889117f97643
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4847dd58-68b2-864d-94ae-889117f97643').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]')})