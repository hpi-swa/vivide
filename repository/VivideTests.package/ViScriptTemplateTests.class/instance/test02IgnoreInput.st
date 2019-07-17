tests - extra patterns
test02IgnoreInput
	"Use only literals or any globally accessible object reference such as classes or globals. Ignore any objects provided in the input buffer."

	| script |
	script := [#(1 2 3 4)] asScript.
	self
		assert: #(1 2 3 4)
		equals: (script process: #(a b c)) asArray;
		assert: script isGlobal.

	script := [100] asScript.
	self
		assert: #(100)
		equals: (script process: #(a b c)) asArray;
		assert: script isGlobal.