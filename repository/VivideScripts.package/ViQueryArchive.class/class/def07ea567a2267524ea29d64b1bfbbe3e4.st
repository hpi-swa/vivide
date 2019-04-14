definitions
def07ea567a2267524ea29d64b1bfbbe3e4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'07ea567a-2267-524e-a29d-64b1bfbbe3e4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:43:12 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result | out addAll: result asList]]')})