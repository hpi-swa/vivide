definitions
def650145d89f4b5d4f9df5c3b826d9cb0d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'650145d8-9f4b-5d4f-9df5-c3b826d9cb0d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '26 April 2019 8:15:35.2911 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})