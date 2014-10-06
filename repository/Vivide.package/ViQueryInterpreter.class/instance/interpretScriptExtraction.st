as yet unclassified
interpretScriptExtraction

	numProperties := numProperties + 1.
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects within: (contexts at: group)) in: [:newProperties |
			newProperties doWithIndex: [:p :index |
				(step convertProperty: p) in: [:newProperty |
					(properties
						at: (groupedObjects at: index)
						ifAbsentPut: [Dictionary new]) in: [:dict |
							newProperty do: [:nameToValue |
								"Part of property, e.g. #text or #icon."
								dict
									"Store new value for this property.."
									at: nameToValue key
									put: nameToValue value;
									"Ensure value history in model. May be exposed by tables."
									at: ('{1}_{2}' format: {numProperties. nameToValue key})
									put: nameToValue value]]]]]].