definitions
def429a2320d9e43f499521491b2d32758c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'429a2320-d9e4-3f49-9521-491b2d32758c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:45 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]')})