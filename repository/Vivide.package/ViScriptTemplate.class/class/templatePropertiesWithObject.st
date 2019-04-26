templates
templatePropertiesWithObject

	^ (44 to: 83) -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> object asString }]
		value: o)]] value: in) do: [:result | out add: result]]'