definitions
def7655c1c8f426344389a8bb6a0b28181b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7655c1c8-f426-3443-89a8-bb6a0b28181b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})