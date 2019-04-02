definitions
def2bffc076d91ea843a8db0a5d01c978c9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		' (', (ViLabelServiceForEclipse doObject: flag reference actualClass), ')')}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2bffc076-d91e-a843-a8db-0a5d01c978c9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:22:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		'' ('', (ViLabelServiceForEclipse doObject: flag reference actualClass), '')'')}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})