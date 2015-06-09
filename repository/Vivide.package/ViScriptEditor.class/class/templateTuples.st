templates
templateTuples

	^ (57 to: 85) -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:object1 :object2 | object1] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'