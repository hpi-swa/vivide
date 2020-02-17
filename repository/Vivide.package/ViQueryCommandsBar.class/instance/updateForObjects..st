updating
updateForObjects: oneOrMoreObjects

	| commands objects |
	objects := oneOrMoreObjects asList.	
	commands := ViQueryCommandsBar commandsForObjects: objects.
	
	self flag: #performance. "mt: Only update changed buttons?"
	self
		removeAllMorphs;
		addAllMorphs:
			(commands collect: [:cmd | self createButtonForCommand: cmd]),
			{addBtn}.
	
	lastObjects := WeakArray withAll: objects.