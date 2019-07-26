tests - construction
test03KnownScripts

	| scripts |
	scripts := {
		([:num | num * num] -> { #label -> 'one' }) asScript.
		([:num | num + num] -> { #label -> 'two' }) asScript }.
	scripts first adoptOrganization: scripts second organization.

	ViActiveScriptOrganizer value: scripts first organization during: [
		self
			assert: (ViPane new knownScripts includesAllOf: scripts);
			assert: ((ViPane new script: scripts first; knownScripts) includesAllOf: scripts);
			deny: ((ViPane new script: [:ea | ea] asScript; knownScripts) includesAllOf: scripts)].
	
	self
		deny: (ViPane new knownScripts includesAllOf: scripts);
		assert: ((ViPane new script: scripts first; knownScripts) includesAllOf: scripts);
		deny: ((ViPane new script: [:ea | ea] asScript; knownScripts) includesAllOf: scripts).