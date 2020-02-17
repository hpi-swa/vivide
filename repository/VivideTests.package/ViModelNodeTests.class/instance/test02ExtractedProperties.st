tests
test02ExtractedProperties

| script model |
	script := {
		[:num | num + 1].
		[:num | #text -> ('test ', num asString)]
	} asScript.
	model := script interpretScriptWith: #(1 2).
	
	self
		assert: 'test 2' equals: model nodes first text;
		assert: 'test 2' equals: (model nodes first at: #text);
		assert: 'test 2' equals: (model nodes first at: #'1_text');
		assert: 'test 3' equals: model nodes second text;
		assert: 'test 3' equals: (model nodes second at: #text);
		assert: 'test 3' equals: (model nodes second at: #'1_text').