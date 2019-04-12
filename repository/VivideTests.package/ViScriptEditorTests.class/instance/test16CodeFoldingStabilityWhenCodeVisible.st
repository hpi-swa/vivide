tests - single
test16CodeFoldingStabilityWhenCodeVisible
	"Keep the entire script source code after that code changes IF the user is looking at the entire [:in :out | ] block. Properties remain not visible."
	
	editor goUpToTop; goDown.
	self
		deny: editor areScriptPropertiesVisible;
		assert: editor isScriptSourceCodeVisible.
	
	"Refactor the script code."
	script sourceCode: '[:in :out | out addAll: in]'.
	self forceGuiUpdate.
	self
		deny: editor areScriptPropertiesVisible;
		assert: editor isScriptSourceCodeVisible.