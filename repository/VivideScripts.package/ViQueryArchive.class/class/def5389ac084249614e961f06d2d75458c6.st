definitions
def5389ac084249614e961f06d2d75458c6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5389ac08-4249-614e-961f-06d2d75458c6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:12:18 pm')})).
(#sourceCode -> '[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})