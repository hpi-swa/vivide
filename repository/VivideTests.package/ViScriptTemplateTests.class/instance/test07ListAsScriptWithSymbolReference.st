tests - list and script conversion
test07ListAsScriptWithSymbolReference

	| far script organization |
	far := [:num | num * num] asScript.
	far id: #test07.
	organization := far organization.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			[:num | num + 10].
			#test07 "Reference to other step with that id."
		} asScript.
	
		self
			assert: far organization equals: organization; "No Change"
			deny: far organization equals: script organization;
			deny: script hasAfterScripts;
			assert: script next isScript;
			assert: script next hasAfterScripts;
			assert: script next afterScripts first == far.
	
	].