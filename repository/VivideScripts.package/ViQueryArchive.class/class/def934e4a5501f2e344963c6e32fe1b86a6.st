definitions
def934e4a5501f2e344963c6e32fe1b86a6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'934e4a55-01f2-e344-963c-6e32fe1b86a6').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'5389ac08-4249-614e-961f-06d2d75458c6').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')})).
(#sourceCode -> '[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})