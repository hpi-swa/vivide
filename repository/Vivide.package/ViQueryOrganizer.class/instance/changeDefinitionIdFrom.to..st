organization - definitions
changeDefinitionIdFrom: oldId to: newId

	(self definitions removeKey: oldId ifAbsent: [^ self]) in: [:def |
		self definitions at: newId put: def.
		
		(self definitionsCategorizer categoryOfElement: oldId) in: [:category |
			self definitionsCategorizer removeElement: oldId.
			category ifNotNil: [
				self definitionsCategorizer classify: newId under: category]]
		].