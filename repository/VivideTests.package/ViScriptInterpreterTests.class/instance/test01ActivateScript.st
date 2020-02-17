tests - script activation
test01ActivateScript

	| script activation |
	script := [:num | num * num] asScript.
	activation := script activate.
	
	self
		deny: activation atEnd;
		assert: script equals: activation thisStep;
		assert: script equals: activation next;
		assert: activation atEnd.