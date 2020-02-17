tests
test14DefaultPropertiesAtEnd
	"The interpreter has to lookup the default step directly after the interpretation of the next step."
	
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

	interpreter doNext.
	self deny: interpreter atEnd. "#defaultProperties already set up here."
	
	interpreter doNext.
	self
		assert: interpreter atEnd;
		assert: 'test 1' equals: ((interpreter propertiesFor: 1) at: #text);
		assert: 'test 4' equals: ((interpreter propertiesFor: 4) at: #text);
		assert: 'test 9' equals: ((interpreter propertiesFor: 9) at: #text).