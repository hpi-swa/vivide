actions
chooseIcon

	| codeSnippet |
	codeSnippet := UiIconPickerDialog new
		topLeft: (self ui iconBtn localPointToGlobal: self ui iconBtn bottomLeft);
		pickCodeForIcon.

	self currentIcon: (Compiler evaluate: codeSnippet).