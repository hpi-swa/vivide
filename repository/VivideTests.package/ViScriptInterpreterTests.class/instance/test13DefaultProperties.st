tests
test13DefaultProperties

	| script default interpreter |
	script := [:num | num * num] asScript.
	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	default adoptOrganization: script organization.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).

	self
		assert: script next isNil;
		deny: script isPropertyExtraction;
		assert: script equals: interpreter next;
		assert: default equals: (script organization stepById: #defaultProperties).

	interpreter upToExtraction. "So... do we reach #defaultProperties?"
	self
		assert: interpreter atEnd;
		assert: 'test 1' equals: ((interpreter propertiesFor: 1) at: #text);
		assert: 'test 4' equals: ((interpreter propertiesFor: 4) at: #text);
		assert: 'test 9' equals: ((interpreter propertiesFor: 9) at: #text).