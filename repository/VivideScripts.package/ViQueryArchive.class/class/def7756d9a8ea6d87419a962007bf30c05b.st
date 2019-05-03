definitions
def7756d9a8ea6d87419a962007bf30c05b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'7756d9a8-ea6d-8741-9a96-2007bf30c05b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 10:47:42.408161 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (ViObjectOriginService doObject: object) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})