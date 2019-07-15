steps
step829e7d5e2892544aa015d5efe0983785
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		' (', (ViLabelServiceForEclipse doObject: flag reference actualClass), ')')}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'34c17bcd-8a38-1049-bad6-9cf6e2beab36').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:22:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		'' ('', (ViLabelServiceForEclipse doObject: flag reference actualClass), '')'')}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'34c17bcd-8a38-1049-bad6-9cf6e2beab36').
(#iconCode -> 'nil').
(#id -> #'829e7d5e-2892-544a-a015-d5efe0983785').
(#isProperty -> true).
(#label -> nil).
(#next -> #'5406f229-d72e-9840-a58d-c61752a3b24a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:48:13 pm').
(#headerText -> 'Resource').
(#inputKind -> ViFlagComment).
(#labelColor -> '000000').
(#priority -> 4020)
}))
})