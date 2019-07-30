tests - references and stack
test01Reference

	| near far interpreter |
	far := [:num | num * num] asScript.
	near := far asReference.
	near adoptOrganization: far organization.
	near next: [:number | #text -> ('test ', number asString)] asScript.
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
		assert: 1 equals: interpreter stack size;
		assert: near next equals: interpreter stack top thisStep;
		assert: near next equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: interpreter stack isEmpty;
		assert: interpreter atEnd.