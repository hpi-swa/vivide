tests - construction
test04Recursion
	"Construct a recursive script using references."

	| step reference |
	step := [:num | num * num] asScript.
	reference := step asReference.
	self deny: step isRecursive.

	step next: reference.
	self
		assert: step hasNext;
		assert: step isRecursive.
	
	step next: {
		[:num | num + 1].
		[:num | #text -> num asString].
	} asScript.
	self deny: step isRecursive.

	step steps last next: reference.
	self assert: step isRecursive.