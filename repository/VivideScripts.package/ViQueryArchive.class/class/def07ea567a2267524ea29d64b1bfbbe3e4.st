definitions
def07ea567a2267524ea29d64b1bfbbe3e4
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 June 2015 1:43:12 pm'); yourself)); add: (#id->#'07ea567a-2267-524e-a29d-64b1bfbbe3e4'); add: (#block->[:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:view | (view isKindOf: ViMultiPaneWidget) ifTrue: [view panes] ifFalse: [#()] ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)