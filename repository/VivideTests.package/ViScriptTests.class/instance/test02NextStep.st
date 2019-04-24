tests - construction
test02NextStep

	| script otherStep |
	script := [:num | num * num] asScript.
	otherStep := [:num | num + 1] asScript.

	self
		deny: script hasNext;
		deny: otherStep hasNext.
	
	script next: otherStep.
	self
		assert: script hasNext;
		deny: otherStep hasNext;		
		assert: script next == otherStep.