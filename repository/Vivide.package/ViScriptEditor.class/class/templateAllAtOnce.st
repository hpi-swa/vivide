as yet unclassified
templateAllAtOnce

	^ (14 to: 33) -> '[:in :out | ([:objects | objects]
	value: in) do: [:result |
		(ViQueryInterpreter isCollection: result)
			ifTrue: [out addAll: result]
			ifFalse: [out add: result]]]'