as yet unclassified
applySourceCode: aString toTemplate: aTemplate
	" For example
		[:num | num + num]
	can be applied to
		(45 to: 62) -> '[:in :out | (
			[:objects | objects collect: [:object | object]]
				value: in) do: [:result | out addAll: result asList]]' "

	^ (aTemplate value first: aTemplate key first - 1),
		aString,
		(aTemplate value last: aTemplate value size - aTemplate key last)