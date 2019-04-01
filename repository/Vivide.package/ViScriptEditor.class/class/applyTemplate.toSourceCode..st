as yet unclassified
applyTemplate: aTemplate toSourceCode: aString
	" For example
		(45 to: 62) -> '[:in :out | (
			[:objects | objects collect: [:object | object]]
				value: in) do: [:result | out addAll: result asList]]'
	or
		#standard
	can be applied to
		'[:num | num + num]' "

	^ (aTemplate value first: aTemplate key first - 1),
		aString,
		(aTemplate value last: aTemplate value size - aTemplate key last)