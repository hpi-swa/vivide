as yet unclassified
templateProperties

	^ (43 to: 82) -> '[:in :out | ([:all | all collect: [:o |
	([:object | { #text -> object asString }] value: o), { #object -> o }]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'