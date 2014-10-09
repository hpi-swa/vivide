templates
templateProperties

	^ (44 to: 83) -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object asString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'