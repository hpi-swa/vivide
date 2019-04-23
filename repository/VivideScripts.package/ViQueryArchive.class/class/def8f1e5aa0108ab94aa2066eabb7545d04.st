definitions
def8f1e5aa0108ab94aa2066eabb7545d04
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconService doObject: flag reference). 
	#text -> (ViLabelService doObject: flag reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'8f1e5aa0-108a-b94a-a206-6eabb7545d04').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:01:48 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconService doObject: flag reference). 
	#text -> (ViLabelService doObject: flag reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})