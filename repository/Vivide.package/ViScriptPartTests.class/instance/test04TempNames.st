tests
test04TempNames
	"Do not lose temp names for convenience script interface."
	
	self
		assert: '[:object | object]' = '[:object | object]' asScript sourceCodeShort;
		assert: '[:object | object]' = [:object | object] asScript sourceCodeShort. 