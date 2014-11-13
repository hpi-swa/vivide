tests
test04TempNames

	self
		assert: '[:object | object]' ~= '[:object | object]' asScript sourceCodeShort;
		assert: '[:object | object]' = [:object | object] asScript sourceCodeShort. 