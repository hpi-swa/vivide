accessing - convenience
propertiesFor: anObject ifNone: block

	| objectIndex group |
	group := self groups
		detect: [:g | (self objects at: g) includes: anObject]
		ifNone: [^ block value].
	objectIndex := (self objects at: group) indexOf: anObject.
		  
	(self properties at: group ifAbsent: [^ block value]) in: [:chunks |
		| result |
		result := Dictionary new.
		chunks withIndexDo: [:chunk :propertyIndex |
			(chunk at: objectIndex ifAbsent: [^ block value]) do: [:nameToValue |
				"Part of property, e.g. #text or #icon."
				result
					"Store new value for this property.."
					at: nameToValue key
					put: nameToValue value;
					"Ensure value history in model. May be exposed by tables."
					at: ('{1}_{2}' format: {propertyIndex. nameToValue key})
					put: nameToValue value]].
		^ result
	].