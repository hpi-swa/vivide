definitions
def6b27229b8de9af488277e920eda66d72
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord stamp }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'6b27229b-8de9-af48-8277-e920eda66d72').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 3:43 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord stamp }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})