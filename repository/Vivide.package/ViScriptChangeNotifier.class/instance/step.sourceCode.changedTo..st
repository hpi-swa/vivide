events - script configuration
step: aStep sourceCode: oldCode changedTo: newCode

	self trigger: ((ViScriptChangeEvent item: aStep change: #SourceCodeChanged)
		oldSourceCode: oldCode;
		newSourceCode: newCode;
		yourself).