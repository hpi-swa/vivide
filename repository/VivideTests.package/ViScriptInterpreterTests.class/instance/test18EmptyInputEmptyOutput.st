tests
test18EmptyInputEmptyOutput
	"Script interpretation does not care about empty input or output. Only the model does."
	
	| script interpreter |
	script := {
		[:in :out |
			"Non-empty input."
			self assert: in notEmpty.
			"Empty output."
			self assert: out isEmpty]. 
		[:in :out |
			"Empty input."
			self assert: in isEmpty.
			"Non-empty output."
			out add: 42.
			self assert: out notEmpty].
	} asScript.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToExtraction.
	self assert: #(42) equals: interpreter objects asArray.