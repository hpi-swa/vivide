tests - references and stack
test02ReferenceOnly
	"After the referenced step(s), there is no more script step."
	
	| near far interpreter |
	far := [:num | #text -> num asString] asScript.
	near := far asReference.
	near adoptOrganization: far organization.
	interpreter := ViScriptInterpreter on: near using: #(1 2 3).
	
	self
		assert: 1 equals: interpreter stack size;
		assert: near equals: interpreter stack top thisStep;
		assert: near equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: 2 equals: interpreter stack size;
		assert: far equals: interpreter stack top thisStep;
		assert: far equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: interpreter stack isEmpty;
		assert: interpreter atEnd.