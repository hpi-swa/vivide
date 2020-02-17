tests - construction
test05AsReference

	| script far |
	far := [:num | num * num] asScript.
	script := far asReference.
	script adoptOrganization: far organization.
	self
		assert: #(1 2 3) equals: (script process: #(1 2 3)) asArray; "Identity."
		assert: script hasAfterScripts;
		assert: script organization == far organization;
		assert: far equals: script afterScripts first.