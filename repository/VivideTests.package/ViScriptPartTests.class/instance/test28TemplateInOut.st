tests
test28TemplateInOut
	"Template detection. Full specification of in and out processing. Note that this will not be recognized as a tuple because of the argument names."
	
	| script results |
	script := [:in :out | out addAll: in] asScript.

	self deny: script isPropertyExtraction.
	self assert: Object equals: script baseClass.

	results := script process: #((2 3) (4 5)).
	self assert: (#((2 3) (4 5)) hasEqualElements: results).