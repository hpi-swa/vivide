tests - single
test05FullSourceCode
	"The text representation of scripts in the script editor combine the transformation source code with a text form of the script's properties."

	| spec |
	script := { [:num | num + 1] -> { #weather -> #sunny } } asScript.
	editor object: script.
	
	self
		assert: (editor fullSourceCode includesSubstring: '[:num | num + 1]' caseSensitive: true);
		assert: (editor fullSourceCode includesSubstring: script sourceCode caseSensitive: true).
		
	spec := Compiler evaluate: editor fullSourceCode. "[] -> {}"
	self
		assert: spec key isBlock; "[:in :out | ...]"
		assert: 2 equals: spec key numArgs;
		assert: spec value isList; "{ ... }"
		assert: #sunny equals: ((Dictionary newFrom: spec value) at: #weather). "#weather -> #sunny"