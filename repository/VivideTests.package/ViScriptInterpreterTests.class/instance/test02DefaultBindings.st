tests - bindings
test02DefaultBindings
	
	| script interpreter |
	script := {
		[:num | num * num] -> { #id -> #one }.
		'[:in :out | out addAll: {thisStep. thisScript}]' -> { #id -> #two }.
	} asScript.
	interpreter := ViScriptInterpreter on: script.
	interpreter bind: #testValue to: 42.
	interpreter upToEnd.
	
	self
		assert: #two equals: interpreter objects first id;
		assert: #one equals: interpreter objects second id.