tests - construction
test05AsReference

	| script far |
	far := [:num | num * num] asScript.
	script := far asReference.
	self 
		assert: script isReference;
		assert: script organization == far organization;
		assert: far equals: script reference.