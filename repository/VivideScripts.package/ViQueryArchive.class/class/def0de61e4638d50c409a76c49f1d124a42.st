definitions
def0de61e4638d50c409a76c49f1d124a42
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0de61e46-38d5-0c40-9a76-c49f1d124a42').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 5:22:22 pm')})).
(#sourceCode -> '[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})