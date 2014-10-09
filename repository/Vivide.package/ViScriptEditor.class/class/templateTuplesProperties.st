templates
templateTuplesProperties

	^ (44 to: 94) -> '[:in :out | ([:all | all collect: [:t | (
	[:object1 :object2 | { #text -> object1 asString }]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'