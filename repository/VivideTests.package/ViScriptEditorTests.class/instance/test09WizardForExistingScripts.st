tests - single
test09WizardForExistingScripts
	"The wizard can be activated for scripts that already have source code."

	script := [:num | num * num] asScript.	
	editor object: script.
	
	self
		deny: script isPropertyExtraction;
		assert: #(1 4 9) equals: (script interpretScriptWith: #(1 2 3)) objects asArray;
		deny: editor isWizardActive;
		assert: editor visibleSourceCode = '[:num | num * num]'.

	"1) The activated wizard shows a different text to work with."
	editor activateWizard.
	self
		assert: editor isWizardActive;
		deny: editor visibleSourceCode = '[:num | num * num]'.
	
	"2) The deactivated wizard returns to the original representation."
	editor deactivateWizard.	
	self
		assert: #(1 4 9) equals: (script interpretScriptWith: #(1 2 3)) objects asArray;
		deny: editor isWizardActive;
		assert: editor visibleSourceCode = '[:num | num * num]'.
	
	"3) Using the wizard and its template proposal, the underlying script changes."
	editor
		activateWizard;
		visibleSourceCode: '[:object | #text -> object printString]';
		acceptSourceCode.
	self
		assert: script isPropertyExtraction;
		assert: #(1 2 3) equals: (script interpretScriptWith: #(1 2 3)) objects asArray;
		deny: editor isWizardActive;
		assert: editor visibleSourceCode = '[:object | { #text -> object printString }]'.