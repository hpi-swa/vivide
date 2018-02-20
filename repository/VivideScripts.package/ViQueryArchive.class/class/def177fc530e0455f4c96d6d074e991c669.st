definitions
def177fc530e0455f4c96d6d074e991c669
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> ('[' , entry key time print24 , '] ' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'177fc530-e045-5f4c-96d6-d074e991c669').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 August 2016 4:50:38 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> (''['' , entry key time print24 , ''] '' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})