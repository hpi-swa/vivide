private
normalizeMorphPositions: someMorphs in: bounds

	| min delta |
	min := 9999@9999.
	someMorphs do: [:m | min := min min: m topLeft].
	delta := bounds topLeft - min.
	someMorphs do: [:m | m topLeft: m topLeft + delta].