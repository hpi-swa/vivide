tests - list and script conversion
test07ListAsScriptWithSymbolReference

	| far script |
	far := [:num | num * num] asScript.
	far id: #test07.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			[:num | num + 10].
			#test07 "Reference to other step with that id."
		} asScript.
	
		self
			assert: script next isScript;
			assert: script next isReference;
			assert: script next reference == far.
	
	].