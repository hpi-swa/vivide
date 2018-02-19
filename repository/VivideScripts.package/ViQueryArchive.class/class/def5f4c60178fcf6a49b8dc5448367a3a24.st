definitions
def5f4c60178fcf6a49b8dc5448367a3a24
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail |
	{ #text -> mail subject }
	]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5f4c6017-8fcf-6a49-b8dc-5448367a3a24').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:21:39 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail |
	{ #text -> mail subject }
	]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})