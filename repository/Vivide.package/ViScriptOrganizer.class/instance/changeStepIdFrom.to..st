organization - steps
changeStepIdFrom: oldId to: newId

	(self steps removeKey: oldId ifAbsent: [^ self]) in: [:step |
		self steps at: newId put: step.
				
		"Update reference scripts."
		self flag: #todo.
		
	].