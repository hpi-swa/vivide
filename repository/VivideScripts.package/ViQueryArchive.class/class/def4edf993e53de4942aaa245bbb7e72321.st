definitions
def4edf993e53de4942aaa245bbb7e72321
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object isBehavior ifTrue: [object] ifFalse: [#()]]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4edf993e-53de-4942-aaa2-45bbb7e72321').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:48:49 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object isBehavior ifTrue: [object] ifFalse: [#()]]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})