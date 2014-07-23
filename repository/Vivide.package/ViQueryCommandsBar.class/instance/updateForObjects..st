updating
updateForObjects: someObjects

	| commands |
	(ViQueryInterpreter isCollection: someObjects)
		ifFalse: [^ self updateForObjects: {someObjects}].
	
	commands := ViQueryCommandsBar commandsForObjects: someObjects.
	
	self flag: #performance. "mt: Only update changed buttons?"
	self
		removeAllMorphs;
		addAllMorphs:
			(commands collect: [:cmd | self createButtonForCommand: cmd]),
			{addBtn}.
	
	lastObjects := WeakArray withAll: someObjects.