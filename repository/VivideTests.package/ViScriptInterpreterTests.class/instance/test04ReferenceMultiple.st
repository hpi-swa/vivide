tests - references and stack
test04ReferenceMultiple
	"Reference multiple script steps."
	
	| near far interpreter |
	far := {
		[:num | num * num].
		[:num | num + num].
	} asScript.
	near := far asReference.
	near adoptOrganization: far organization.
	near next: ([:number | #text -> ('test ', number asString)] asScript
					adoptOrganization: near organization;
					yourself).
	interpreter := ViScriptInterpreter on: near using: #(1 2 3).
	
	self
		assert: 1 equals: interpreter stack size;
		assert: near equals: interpreter stack top thisStep;
		assert: near equals: interpreter next;
		deny: interpreter atEnd.

	interpreter upToExtraction.
	self
		assert: interpreter stack isEmpty;
		assert: interpreter atEnd;
		assert: #(2 8 18) equals: interpreter objects asArray;
		assert: 'test 18' equals: ((interpreter propertiesFor: 18) at: #text).