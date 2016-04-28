definitions
def2880e8b06e571a48b63336bae364a433
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | { #text -> compiledMethod methodClass name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2880e8b0-6e57-1a48-b633-36bae364a433').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:04:51 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | { #text -> compiledMethod methodClass name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})