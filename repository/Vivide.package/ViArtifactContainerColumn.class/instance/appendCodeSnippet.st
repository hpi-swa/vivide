as yet unclassified
appendCodeSnippet

	self editors ifNotEmpty: [:eds | eds last grabKeyboard]. "Append scripts always to the end..."
	self artifactRequested: ViSourceCodeSnippet new.