tests - single
test03WizardForNewScripts

	self
		deny: (script hasProperty: #isNew);
		deny: editor isWizardActive.
	
	script := { [:in :out | out addAll: in] -> { #isNew -> true } } asScript.
	editor object: script.
	
	self
		assert: (script hasProperty: #isNew);
		assert: editor isWizardActive;
		deny: editor visibleSourceCode = script sourceCode.