definitions
def0edcebeb4dca884b97392ae55b4f9fe3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> ('[' , entry key time print24 , '] ' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'0edcebeb-4dca-884b-9739-2ae55b4f9fe3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> (''['' , entry key time print24 , ''] '' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})