tests - extraction patterns
test03ExtractWithAutoWrap

	"Common case."
	self
		assert: '[:n | { #text -> n asString }]' asScript sourceCode
		equals: '[:n | #text -> n asString]' asScript sourceCode.

	"Multiple extractions."
	self
		assert: '[:n | { #text -> n asString. #foo -> 42 }   ]' asScript sourceCode
		equals: '[:n | #text -> n asString. #foo -> 42   ]' asScript sourceCode.

	"Tuple unpacking."
	self
		assert: '[:a :b | { #text -> a asString }]' asScript sourceCode
		equals: '[:a :b | #text -> a asString]' asScript sourceCode.

	"If correct, do not change anything."
	self
		assert: '[:n |  {   #text -> n asString  }   ]' asScript sourceCode
		equals: '[:n |  {   #text -> n asString  }   ]' asScript sourceCode.
