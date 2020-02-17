tests - copying & serialization
test06CopyWithoutDefaultScripts
	"This test can only pass if Vivide is running."
	
	| default script copy |
	script := [:num | num * num] asScript.
	default := #defaultProperties asScript.
	script next: default asReference.
	
	self
		assert: script next hasAfterScripts;
		assert: script next afterScripts first isDefault; "... if Vivide is running ..."
		assert: script next afterScripts first == default.
	
	copy := script copy.

	self
		assert: copy next hasAfterScripts;
		assert: copy next afterScripts first isDefault; "... if Vivide is running ..."
		assert: copy next afterScripts first == default.