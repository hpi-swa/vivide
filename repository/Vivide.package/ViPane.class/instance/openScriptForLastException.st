errors
openScriptForLastException

	| d script anchor |
	d := self decorationNamed: #error.
	script := d valueOfProperty: #maliciousScript.
	
	anchor := self script.
	
	self flag: #todo. "mt: Support metascripts and references."
	self script stepsDo: [:step |
		step == script ifTrue: [^ VivideLight active openArtifact: self script]].

	self flag: #tofix. "mt: open the correct script as entry point..."
	VivideLight active openArtifact: script.