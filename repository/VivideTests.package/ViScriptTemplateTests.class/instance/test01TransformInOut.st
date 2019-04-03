tests - extra patterns
test01TransformInOut
	"Specification of the entire transformation script. Note that this should not be recognized as a tuple because of the argument names."

	| code script |
	code := '[:in :out | "Test" out addAll: in]'.
	script := code asScript.

	self deny: script isPropertyExtraction.
	self assert: code equals: script sourceCode.

	self
		assert: #((2 3) (4 5))
		equals: (script process: #((2 3) (4 5))) asArray.