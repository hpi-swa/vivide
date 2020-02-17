tests - single
test12CodeFoldingStability
	"Do not change the text for simple code changes."
	
	| text |
	text := editor visibleSourceCode.
	editor goUp.
	self deny: text = editor visibleSourceCode.
	
	text := editor visibleSourceCode.
	editor clear.
	self assert: text = editor visibleSourceCode.