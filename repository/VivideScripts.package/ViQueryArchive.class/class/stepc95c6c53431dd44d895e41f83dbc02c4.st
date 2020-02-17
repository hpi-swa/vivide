steps
stepc95c6c53431dd44d895e41f83dbc02c4
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
(#id -> #'2bffc076-d91e-a843-a8db-0a5d01c978c9').
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
(#definition -> #'2bffc076-d91e-a843-a8db-0a5d01c978c9').
(#iconCode -> 'nil').
(#id -> #'c95c6c53-431d-d44d-895e-41f83dbc02c4').
(#isProperty -> true).
(#label -> nil).
(#next -> #'4f59f26e-7806-f847-a4a5-10f389535b0e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:01:48 pm').
(#headerText -> 'Resource').
(#inputKind -> ViFlagComment).
(#priority -> 3880)
}))
})