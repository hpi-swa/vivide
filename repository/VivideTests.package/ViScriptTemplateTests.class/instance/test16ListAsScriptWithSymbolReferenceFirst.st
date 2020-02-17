tests - list and script conversion
test16ListAsScriptWithSymbolReferenceFirst
	"If there is a symbol reference first, DO NOT adopt that target's reference."
	
	| far script organization |
	far := [:num | num * num] asScript.
	far id: #test16.
	organization := far organization.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#test16. "Begin directly with a reference to another script."
			[:num | num + 10].
		} asScript.
	
		self
			assert: far organization equals: organization; "No Change"
			assert: script isScript;
			assert: script hasAfterScripts;
			assert: script afterScripts first == far;
			deny: far organization equals: script organization.
	].