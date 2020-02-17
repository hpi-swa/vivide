steps
step4f59f26e7806f847a4a510f389535b0e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (ViObjectOriginServiceForEclipse doObject: flag reference) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'95fea706-48f7-4b4d-be7f-63cab6141cc0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:29:04 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (ViObjectOriginServiceForEclipse doObject: flag reference) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'95fea706-48f7-4b4d-be7f-63cab6141cc0').
(#iconCode -> 'nil').
(#id -> #'4f59f26e-7806-f847-a4a5-10f389535b0e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'475707d2-2203-3e46-886e-f4249d390390').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:03:26 pm').
(#headerText -> 'Path').
(#inputKind -> ViFlagComment).
(#priority -> 3890)
}))
})