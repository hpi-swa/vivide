tests - list and script conversion
test13BlockAsScriptWithSymbolReference

	| far script |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	script := [#far] asScript.
	
	self
		assert: script isReference;
		deny: script reference == far.
	
	ViActiveScriptOrganizer
		value: far organization
		during: [self assert: script reference == far].