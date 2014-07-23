as yet unclassified
executeCommandForSnippet: snippet

	self executeCommand: (ViQueryCommand new
		definition: snippet;
		yourself).