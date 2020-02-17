tests - single
test15CodeFoldingStabilityWhenAllVisible
	"Show the full text representation after changes when the user is looking at everything anyway."
	
	editor goUpToTop.
	self assert: editor areScriptPropertiesVisible.
	
	"Refactor the script code."
	script sourceCode: '[:in :out | out addAll: in]'.
	self forceGuiUpdate.
	self assert: editor areScriptPropertiesVisible.
	
	"Add a script property."
	script setProperty: #color toValue: #heaven.
	self forceGuiUpdate.
	self assert: editor areScriptPropertiesVisible.	