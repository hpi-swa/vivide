steps
stepcdbe8071be1b984eb62a2c1b721153c0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (flag comment ifNil: [('<i>\<', flag symbol, '\></i>') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'86327a87-dc80-ba43-b648-c2b877187bb3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:56:36 pm').
(#labelColor -> '007F00')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (flag comment ifNil: [(''<i>\<'', flag symbol, ''\></i>'') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'86327a87-dc80-ba43-b648-c2b877187bb3').
(#iconCode -> 'nil').
(#id -> #'cdbe8071-be1b-984e-b62a-2c1b721153c0').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c95c6c53-431d-d44d-895e-41f83dbc02c4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:56:36 pm').
(#headerText -> 'Description').
(#inputKind -> ViFlagComment).
(#labelColor -> '000000').
(#priority -> 3900).
(#resizeMode -> #rigid)
}))
})