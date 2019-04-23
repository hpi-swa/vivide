definitions
def160a08d5cd775c4482861c5af506486f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj isDirectory
	ifTrue: ['']
	ifFalse: [(obj size // 1024 max: 1) asString, ' KB']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'160a08d5-cd77-5c44-8286-1c5af506486f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj isDirectory
	ifTrue: ['''']
	ifFalse: [(obj size // 1024 max: 1) asString, '' KB'']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})