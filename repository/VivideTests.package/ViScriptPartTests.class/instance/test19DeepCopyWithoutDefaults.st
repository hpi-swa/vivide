tests
test19DeepCopyWithoutDefaults
	"Do not copy scripts referenced in default organization."
	
	| script deepCopy |
	script := {[#defaultProperties] -> {#isReference -> true}} asScript.
	deepCopy := script deepCopy.

	self assert: script reference == deepCopy reference.