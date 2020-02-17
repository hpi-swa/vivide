tests - single
test04WizardForNewScriptsAccept
	"After all changes are accepted, the script is no longer marked as new."

	script := { [:in :out | out addAll: in] -> { #isNew -> true } } asScript.
	editor object: script.
	editor visibleSourceCode: '[:num | num * num]'.
	editor acceptSourceCode.
	
	self
		deny: editor isWizardActive;
		deny: (script hasProperty: #isNew);
		assert: #(1 4 9) equals: (script interpretScriptWith: #(1 2 3)) objects asArray.