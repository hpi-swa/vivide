actions
executeCommandForSnippet: snippet

	self executeCommand: (ViQueryCommand new
		definition: snippet;
		yourself).