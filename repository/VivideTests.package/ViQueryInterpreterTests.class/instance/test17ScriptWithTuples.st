tests
test17ScriptWithTuples

	| q1 q2 |
	q1 := ViScriptPart new sourceCode: '[:in :out | out add: #(a b)]'.
	q2 := ViScriptPart new sourceCode: '[:in :out | out addAll: (in collect: [:tuple |
		{#text -> #foobar. #object -> tuple first. #objects -> {tuple}}])]'.
	q2 setProperty: #isProperty toValue: true.    
	
	q1 next: q2. 
	sut := ViScriptInterpreter on: q1.
	sut upToExtraction.

	self assert: ((sut propertiesFor: sut objects first) at: #objects) = #( (a b) ).
	self assert: ((sut propertiesFor: sut objects first) at: #object) = #a.