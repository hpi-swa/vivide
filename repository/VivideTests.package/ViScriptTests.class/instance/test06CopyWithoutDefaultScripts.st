tests - copying & serialization
test06CopyWithoutDefaultScripts
	"This test can only pass if Vivide is running."
	
	| default script copy |
	script := [:num | num * num] asScript.
	default := #defaultProperties asScript.
	script next: default asReference.
	
	self
		assert: script next isReference;
		assert: script next reference isDefault; "... if Vivide is running ..."
		assert: script next reference == default.
	
	copy := script copy.

	self
		assert: copy next isReference;
		assert: copy next reference isDefault; "... if Vivide is running ..."
		assert: copy next reference == default.