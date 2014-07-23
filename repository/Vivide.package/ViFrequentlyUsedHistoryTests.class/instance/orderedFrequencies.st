private
orderedFrequencies

	^ (sut objects collect: [:obj | sut frequencies at: obj]) asArray