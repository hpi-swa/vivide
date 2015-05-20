as yet unclassified
doNextTask

	uiNext enabled: false.

	self experiment tasks ifNotNil: [:tasks |
		self currentTask
			ifNil: [self currentTask: tasks first]
			ifNotNil: [:task |
				| nextIndex |
				task runner createResult.
				nextIndex := (tasks indexOf: task) + 1.
				nextIndex > tasks size
					ifFalse: [self currentTask: (tasks at: nextIndex)]
					ifTrue: [self currentTask: nil "Finished."]].
		self currentTask ifNotNil: [:task | task runner startTask]].