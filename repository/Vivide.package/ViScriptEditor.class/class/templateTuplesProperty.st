templates
templateTuplesProperty

	^ (57 to: 88) -> '[:in :out | ([:all | all collect: [:t |
	([:tuple | {
		[:o1 :o2 | #text -> o1 asString] valueWithArguments: tuple }]
			value: t), { #object -> t first. #objects -> t }]]
				value: in) do: [:result | out add: result]]'