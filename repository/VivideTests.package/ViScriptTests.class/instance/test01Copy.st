tests - copying & serialization
test01Copy

	| script copy |
	script := [:num | num * num] asScript.
	copy := script copy.
	
	self
		assert: script ~= copy;
		assert: script id ~= copy id;
		assert: script id equals: (copy valueOfProperty: #copyOf).

	self
		assert: script isRegistered;
		assert: copy isRegistered;
		assert: script organization ~= copy organization.
		
	self
		assert: script definition ~= copy definition;
		assert: script sourceCode equals: copy sourceCode.