as yet unclassified
templateProperty

	^ (53 to: 88) -> '[:in :out | ([:all | all collect: [:o |
	([:obj | { [:object | #text -> object asString] value: obj }] value: o), { #object -> o }]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'