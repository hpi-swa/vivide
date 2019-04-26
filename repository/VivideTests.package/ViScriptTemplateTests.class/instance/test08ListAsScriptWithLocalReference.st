tests - list and script conversion
test08ListAsScriptWithLocalReference

	| script |
	script := {
		[:number | number * number]. "First step."
		[:number | #text -> number asString].
		1. "Back to first step."
	} asScript.

	self
		assert: 3 equals: script allSteps size;
		assert: script steps last isScript;
		assert: script steps last isReference;
		assert: script steps last reference == script.

	script := {
		[:number | number * number]. "First step."
		[:number | #text -> number asString].
		1. "Back to first step."
		3. "Back to local reference."
	} asScript.

	self
		assert: 3 equals: script allSteps size; "Last step not reachable from first one!"
		assert: 4 equals: script steps last allSteps size;
		assert: script steps last isScript;
		assert: script steps last isReference;
		assert: script steps last reference == script steps third.