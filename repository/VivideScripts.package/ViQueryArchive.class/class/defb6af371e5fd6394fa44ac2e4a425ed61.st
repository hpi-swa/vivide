definitions
defb6af371e5fd6394fa44ac2e4a425ed61
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [#defaultPropertiesExtended] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b6af371e-5fd6-394f-a44a-c2e4a425ed61').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:55:12 pm')})).
(#sourceCode -> '[:in :out | [#defaultPropertiesExtended] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})