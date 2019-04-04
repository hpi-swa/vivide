accessing - convenience
propertiesFor: anObject ifNone: block

	| objectIndex result |
	objectIndex := self objects indexOf: anObject.
		  
	result := Dictionary new.
	self properties withIndexDo: [:propertiesForObject :index |
		(propertiesForObject at: objectIndex ifAbsent: [^ block value]) do: [:nameToValue |
			"Part of property, e.g. #text or #icon."
			result
				"Store new value for this property.."
				at: nameToValue key
				put: nameToValue value;
				"Ensure value history in model. May be exposed by tables."
				at: ('{1}_{2}' format: {index. nameToValue key})
				put: nameToValue value]].

	^ result