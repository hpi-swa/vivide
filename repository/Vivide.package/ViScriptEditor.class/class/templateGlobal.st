templates
templateGlobal

	^ (13 to: 28) -> '[:in :out | [#(hello world)] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'