tests - construction
test04RecursionWithReference
	"Construct a recursive script using a reference to some previous step."

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