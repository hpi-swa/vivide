tests - list and script conversion
test10ListAsScriptWithSymbolReferenceAndProperties

	| far script |
	far := [:num | num * num] asScript.
	far id: #test10.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			[:num | num + 10] -> { #color -> #blue }.
			#test10 -> { #color -> #yellow }.
		} asScript.
	
		self
			assert: script next isScript;
			assert: script next isReference;
			assert: script next reference == far;
			assert: #blue equals: (script valueOfProperty: #color);
			assert: #yellow equals: (script next valueOfProperty: #color).	
	].