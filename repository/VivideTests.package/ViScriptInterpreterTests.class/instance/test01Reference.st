tests - references and stack
test01Reference

	| near far interpreter |
	far := [:num | num * num] asScript.
	near := far asReference.
	near adoptOrganization: far organization.
	near next: ([:number | #text -> ('test ', number asString)] asScript
					adoptOrganization: near organization;
					yourself).
	interpreter := ViScriptInterpreter on: near using: #(1 2 3).
	
	self
		assert: interpreter stack isEmpty;
		assert: near equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: near equals: interpreter stack top;
		assert: far equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: interpreter stack isEmpty;
		assert: near next equals: interpreter next;
		deny: interpreter atEnd.
	interpreter doNext.
	self
		assert: interpreter stack isEmpty;
		assert: interpreter atEnd.