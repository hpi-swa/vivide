definitions
def6c867afa17d70f4a836a352ba9723208
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | {#text -> morph class name. #icon -> (morph imageForm scaledToSize: 16@16)  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'6c867afa-17d7-0f4a-836a-352ba9723208').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 March 2014 10:06:15 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | {#text -> morph class name. #icon -> (morph imageForm scaledToSize: 16@16)  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})