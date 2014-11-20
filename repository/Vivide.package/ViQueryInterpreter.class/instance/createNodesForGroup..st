as yet unclassified
createNodesForGroup: aGroup

	self properties ifEmpty: [^ #()].

	(self properties at: aGroup) in: [:chunks |
		| result |
		result := Array new: chunks first size.
		chunks withIndexDo: [:chunk :propertyIndex|
			result size < chunk size "Jagged chunks?"
				ifTrue: [result := result, (Array new: chunk size - result size)].

			chunk withIndexDo: [:spec :objectIndex |
				((result at: objectIndex) ifNil: [
					result at: objectIndex put: Dictionary new]) in: [:dict |
						spec do: [:nameToValue |
								"Part of property, e.g. #text or #icon."
								dict
									"Store new value for this property.."
									at: nameToValue key
									put: nameToValue value;
									"Ensure value history in model. May be exposed by tables."
									at: ('{1}_{2}' format: {propertyIndex. nameToValue key})
									put: nameToValue value]
			]]].
		^ result collect: [:props |
			((modelClass ifNil: [ViQueryNode]) newFrom: props associations)
				in: [:node |
					node
						firstStep: self currentStep;
						referenceStack: self stack;
						yourself]]]