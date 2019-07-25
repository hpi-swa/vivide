errors
openScriptForLastException

	| script anchor |
	script := self errorBtn valueOfProperty: #maliciousScript.
	
	anchor := self currentQuery.
	
	self flag: #todo. "mt: Support metascripts and references."
	self currentQuery stepsDo: [:step |
		step == script ifTrue: [^ VivideLight active openArtifact: self currentQuery]].

	self flag: #tofix. "mt: open the correct script as entry point..."
	VivideLight active openArtifact: script.