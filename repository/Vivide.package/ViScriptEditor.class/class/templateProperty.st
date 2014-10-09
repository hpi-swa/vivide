templates
templateProperty

	^ (55 to: 90) -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text -> object asString] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'