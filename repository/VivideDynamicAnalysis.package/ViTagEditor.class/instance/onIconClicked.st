actions
onIconClicked

	| codeSnippet |
	codeSnippet := UiIconPickerDialog new
		topLeft: (self ui iconBtn localPointToGlobal: self ui iconBtn bottomLeft);
		pickCodeForIcon.

	self ui iconBtn icon: (Compiler evaluate: codeSnippet).