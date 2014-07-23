organization - steps
changeStepIdFrom: oldId to: newId

	(self steps removeKey: oldId ifAbsent: [^ self]) in: [:step |
		self steps at: newId put: step.
		
		(self stepsCategorizer categoryOfElement: oldId) in: [:category |
			self stepsCategorizer removeElement: oldId.
			category ifNotNil: [
				self stepsCategorizer classify: newId under: category]]
		].