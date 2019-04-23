definitions
deff02318cba35be240a0b0501b9bf175d9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'f02318cb-a35b-e240-a0b0-501b9bf175d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:21:01 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})