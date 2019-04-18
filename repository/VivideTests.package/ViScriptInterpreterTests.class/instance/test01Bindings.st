tests - bindings
test01Bindings

	| script interpreter |
	script := '[:in :out | out add: testValue]' asScript.
	interpreter := ViScriptInterpreter on: script.
	interpreter bind: #testValue to: 42.
	interpreter upToEnd.
	
	self assert: #(42) equals: interpreter objects asArray.