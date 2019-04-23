definitions
def08d80deca983554ba810d3f35644ff3e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'08d80dec-a983-554b-a810-d3f35644ff3e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:34:54 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})