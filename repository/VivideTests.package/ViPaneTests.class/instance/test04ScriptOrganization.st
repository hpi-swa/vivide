tests - construction
test04ScriptOrganization

	| script |
	script := [:num | num * num] asScript.

	self assert: organization equals: ViPane new organization.
	
	ViActiveScriptOrganizer value: script organization during: [
		self assert: script organization equals: ViPane new organization].

	self assert: script organization equals: (ViPane new script: script; organization).