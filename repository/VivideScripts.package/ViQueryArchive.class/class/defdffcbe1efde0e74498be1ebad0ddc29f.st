definitions
defdffcbe1efde0e74498be1ebad0ddc29f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'dffcbe1e-fde0-e744-98be-1ebad0ddc29f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:34:54 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})