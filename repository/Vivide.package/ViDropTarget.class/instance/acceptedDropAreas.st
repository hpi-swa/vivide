accessing
acceptedDropAreas

	^ acceptedDropAreas ifNil: [acceptedDropAreas := #(left right between)]