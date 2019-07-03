definitions
defd78e317fb0d4434c898c8619449b56c2
	<definition>

	^ (Dictionary newFrom: {
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
})