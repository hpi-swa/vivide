tests
test04ChangeNext

	script next: [:num | #text -> num asString] asScript.
	
	self
		assert: self lastEvent isModified;
		assert: self lastEvent isNextChanged;
		assert: nil equals: self lastEvent oldNext;
		assert: script next equals: self lastEvent newNext.