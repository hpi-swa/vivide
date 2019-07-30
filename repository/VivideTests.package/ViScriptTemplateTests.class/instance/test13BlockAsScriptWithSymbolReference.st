tests - list and script conversion
test13BlockAsScriptWithSymbolReference
	"Not supported anymore! Use script property #after instead."
	
	| far script |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	script := [#far] asScript.
	self
		assert: script isGlobal;
		deny: script hasAfterScripts. "See? Does not work."