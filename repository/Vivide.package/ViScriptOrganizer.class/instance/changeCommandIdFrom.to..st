organization - commands
changeCommandIdFrom: oldId to: newId

	(self commands removeKey: oldId ifAbsent: [^ self]) in: [:step |
		self commands at: newId put: step.
		
		(self commandsCategorizer categoryOfElement: oldId) in: [:category |
			self commandsCategorizer removeElement: oldId.
			category ifNotNil: [
				self commandsCategorizer classify: newId under: category]]
		].