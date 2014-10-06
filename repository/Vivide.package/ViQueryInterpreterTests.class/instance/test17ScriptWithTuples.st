as yet unclassified
test17ScriptWithTuples

	| q1 q2 |
	q1 := ViScriptPart new sourceCode: '[:in :out | out add: #(a b)]'.
	q2 := ViScriptPart new sourceCode: '[:in :out | out addAll: (in collect: [:tuple |
		{#text -> #foobar. #object -> tuple first. #objects -> tuple}])]'.
	q2 setProperty: #isProperty toValue: true.    
	
	q1 next: q2. 
	sut := ViQueryInterpreter on: q1.
	sut upToNextProperties.

	self assert: ((sut propertiesFor: sut allObjects first) at: #objects) = #(a b).
	self assert: ((sut propertiesFor: sut allObjects first) at: #object) = #a.