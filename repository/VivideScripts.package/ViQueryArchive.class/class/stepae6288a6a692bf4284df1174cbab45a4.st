steps
stepae6288a6a692bf4284df1174cbab45a4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '' into: [:result :author |
		result, (author convertFromEncoding: 'utf-8'), ', ']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'d78e317f-b0d4-434c-898c-8619449b56c2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 6:12:20 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '''' into: [:result :author |
		result, (author convertFromEncoding: ''utf-8''), '', '']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d78e317f-b0d4-434c-898c-8619449b56c2').
(#iconCode -> 'nil').
(#id -> #'ae6288a6-a692-bf42-84df-1174cbab45a4').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 6:12:20 pm').
(#priority -> 6350)
}))
})