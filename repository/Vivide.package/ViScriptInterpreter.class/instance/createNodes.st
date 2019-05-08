as yet unclassified
createNodes

	self properties in: [:chunks |
		| result |
		result := Array new: (chunks ifEmpty: [0] ifNotEmpty: [:chks | chks first size]).
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
								put: nameToValue value.
							nameToValue key first isDigit ifFalse: [
								dict
									"Ensure value history in model. May be exposed by tables."
									at: ('{1}_{2}' format: {propertyIndex. nameToValue key})
									put: nameToValue value]]
			]]].

		"If there are no properties, create the #object property."
		result ifEmpty: [
			result := self objects collect: [:ea |
				Dictionary newFrom: { #object -> ea. #'1_object' -> ea }]].

		^ result collect: [:props |
			((modelClass ifNil: [ViModelNode]) newFrom: props associations)
				in: [:node |
					node
						firstStep: self next;
						referenceStack: self stack;
						yourself]]]