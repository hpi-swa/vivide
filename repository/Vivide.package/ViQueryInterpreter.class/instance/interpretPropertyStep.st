interpreting - private
interpretPropertyStep

	self assert: self currentStep isPropertyStep.
	
	numProperties := numProperties + 1.
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects within: (contexts at: group)) in: [:newProperties |
			newProperties doWithIndex: [:newProperty :index |
				(properties
					at: (groupedObjects at: index)
					ifAbsentPut: [Dictionary new]) in: [:dict |
						newProperty do: [:nameToValue |
							"Part of property, e.g. #text or #icon."
							dict
								at: ('{1}_{2}' format: {numProperties. nameToValue key})
								put: nameToValue value]]]]].