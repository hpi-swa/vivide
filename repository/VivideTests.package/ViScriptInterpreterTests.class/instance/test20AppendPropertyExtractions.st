tests
test20AppendPropertyExtractions
	"Consecutive extraction steps are merged by default. You can use a script property to control that."
	
	| script interpreter |
	script := {
		[:num | #object -> num].
		[:num | #object -> (num * num)] -> {#mergeProperty -> false}.
		[:num | #object -> (num + 1)] -> {#mergeProperty -> false}.
	} asScript.

	self
		assert: script isPropertyExtraction;
		assert: script next isPropertyExtraction;
		assert: script next next isPropertyExtraction.

	interpreter := ViScriptInterpreter on: script using: #(2).

	interpreter upToExtraction.	
	self assert: #(2) equals: interpreter objects asArray.

	interpreter upToExtraction.	
	self assert: #(4) equals: interpreter objects asArray.

	interpreter upToExtraction.	
	self assert: #(5) equals: interpreter objects asArray.