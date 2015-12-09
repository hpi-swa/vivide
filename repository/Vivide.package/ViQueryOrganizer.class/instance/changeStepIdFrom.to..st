organization - steps
changeStepIdFrom: oldId to: newId

	(self steps removeKey: oldId ifAbsent: [^ self]) in: [:step |
		self steps at: newId put: step.
		
		(self stepsCategorizer categoryOfElement: oldId) in: [:category |
			self stepsCategorizer removeElement: oldId.
			category ifNotNil: [
				self stepsCategorizer classify: newId under: category]].
		
		"Update reference scripts."
		self flag: #todo.
		
		"Update meta-scripts."
		self metaScripts do: [:metaScript |
			metaScript metaReferenceId = oldId ifTrue: [
				metaScript metaReference: step].
			(metaScript metaScriptReferenceIds includes: oldId) ifTrue: [
				metaScript metaScriptReferences: ((metaScript metaScriptReferenceIds
					collect: [:id | id = oldId ifTrue: [newId] ifFalse: [id]])
					collect: [:id | self stepById: id])]].
	].