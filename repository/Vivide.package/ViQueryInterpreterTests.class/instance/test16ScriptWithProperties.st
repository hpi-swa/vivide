as yet unclassified
test16ScriptWithProperties

	| q1 q2 |
	q1 := ViScriptPart new sourceCode: '[:in :out | out add: #foo]'.
	q2 := ViScriptPart new sourceCode: '[:in :out | out add: {#text -> #foobar. #object -> #foo}]'.
	q2 setProperty: #isProperty toValue: true.    
	
	q1 next: q2. 
	sut := ViQueryInterpreter on: q1.
	sut upToNextProperties.

	self assert: (#(text '1_text' object '1_object') allSatisfy: [:prop | (sut propertiesFor: #foo) includesKey: prop]).