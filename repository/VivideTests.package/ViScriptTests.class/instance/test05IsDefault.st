tests - organization
test05IsDefault
	"This test can only pass if Vivide is running."
	
	| script |
	script := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.

	self
		assert: #defaultProperties equals: script id; 
		deny: script isDefault;
		assert: #defaultProperties asScript isDefault. "... if Vivide is running ..."
	
	ViActiveScriptOrganizer
		value: script organization
		during: [self deny: #defaultProperties asScript isDefault].