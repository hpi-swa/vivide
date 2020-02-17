organization - definitions
changeDefinitionIdFrom: oldId to: newId

	(self definitions removeKey: oldId ifAbsent: [^ self]) in: [:definition |
		self definitions at: newId put: definition].