tests
test21FailedExtractionMerged
	"Extraction steps can transform objects. This will also happen if you forget to specify the extraction explicitely."
	
	| script interpreter |
	script := {
		[:num | num * num] -> {#isProperty -> true. #mergeProperty -> true}.
		[:num | num + num] -> {#isProperty -> true. #mergeProperty -> true}.
	} asScript.
	
	self
		assert: script isPropertyExtraction;
		assert: script next isPropertyExtraction.

	interpreter := ViScriptInterpreter on: script using: #(3).
	interpreter upToExtraction.
	
	self
		assert: #(18) equals: interpreter objects asArray;
		assert: (#(object '2_object' '1_object') includesAllOf: (interpreter propertiesFor: 18) keys);
		assert: 18 "(3*3)+(3*3)" equals: ((interpreter propertiesFor: 18) at: #object);
		assert: 18 "(3*3)+(3*3)" equals: ((interpreter propertiesFor: 18) at: #'2_object');
		assert: 9 "(3*3)" equals: ((interpreter propertiesFor: 18) at: #'1_object').