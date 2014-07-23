actions
addCommandForSnippet: aSnippetDefinition

	| newCommand newButton |
	newCommand := ViQueryCommand new
		definition: aSnippetDefinition;
		register.
	newButton := self createButtonForCommand: newCommand.
	self addMorph: newButton inFrontOf: addBtn.
	newButton fadeIn.