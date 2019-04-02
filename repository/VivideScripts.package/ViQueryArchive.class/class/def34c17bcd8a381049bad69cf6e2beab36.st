definitions
def34c17bcd8a381049bad69cf6e2beab36
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
(#id -> #'34c17bcd-8a38-1049-bad6-9cf6e2beab36').
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