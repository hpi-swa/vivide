tests
test35AutomaticExtractionMerged
	"Extraction steps can transform objects. This will also happen if you forget to specify the extraction explicitely."
	
	| script node |
	script := {
		[:num | num * num] -> {#isProperty -> true. #mergeProperty -> true}.
		[:num | num + num] -> {#isProperty -> true. #mergeProeprty -> true}.
	} asScript.
	node := script interpretScriptWith: #(3).

	self assert: script isPropertyExtraction.
	self assert: (#(object '2_object' '1_object') includesAllOf: node nodes first properties).
	self assert: 18 "(3*3)+(3*3)" equals: node nodes first object.
	self assert: 18 "(3*3)+(3*3)" equals: (node nodes first at: #'2_object'). "same as object"
	self assert: 9 "(3*3)" equals: (node nodes first at: #'1_object').