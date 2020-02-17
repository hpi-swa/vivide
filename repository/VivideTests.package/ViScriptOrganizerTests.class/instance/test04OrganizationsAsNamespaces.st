tests
test04OrganizationsAsNamespaces
	"Organizations are namespaces for scripts."

	| one two script |
	self assert: #numbersTest asScript isNil.
	
	one := { [:num | num + num] -> { #id -> #numbersTest } } asScript.
	two := { [:num | num - num] -> { #id -> #numbersTest } } asScript.
	
	self
		assert: one id = two id;
		assert: one organization ~= two organization.
		
	script := [#numbersTest] asScript.
	self 
		assert: script organization ~= one organization;
		assert: script organization ~= two organization.
	
	ViActiveScriptOrganizer
		value: one organization
		during: [
			self
				assert: #(2 4 6)
				equals: (ViScriptInterpreter on: script using: #(1 2 3)) upToEnd objects asArray].

	ViActiveScriptOrganizer
		value: two organization
		during: [
			self
				assert: #(0 0 0)
				equals: (ViScriptInterpreter on: script using: #(1 2 3)) upToEnd objects asArray].