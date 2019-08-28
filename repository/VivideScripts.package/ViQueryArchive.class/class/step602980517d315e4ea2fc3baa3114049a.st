steps
step602980517d315e4ea2fc3baa3114049a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:method :array | {
	method methodClass organization categoryOfElement: method selector.
	{method. array} }  ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5cb5a422-021a-8f42-977e-17bdea61d8db').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 9:33:01.471728 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:method :array | {
	method methodClass organization categoryOfElement: method selector.
	{method. array} }  ] valueWithArguments: tuple]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5cb5a422-021a-8f42-977e-17bdea61d8db').
(#iconCode -> 'nil').
(#id -> #'60298051-7d31-5e4e-a2fc-3baa3114049a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8fe6639e-eac5-4041-bebf-7f8ad4f3f3b6').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 9:33:01.471728 am').
(#inputKind -> #(nil nil))
}))
})