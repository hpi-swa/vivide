tests - list and script conversion
test13BlockAsScriptWithSymbolReference
	"Not supported anymore!"
	
	| far script |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	
	self deny: [#far] asScript hasAfterScripts. "See? Does not work."