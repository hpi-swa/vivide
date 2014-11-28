as yet unclassified
isTestMethod: aCompiledMethod

	self flag: #hacky. "mt: Can happen if class was deleted..."
	aCompiledMethod methodClass ifNil: [^ false].

	^ (aCompiledMethod methodClass inheritsFrom: TestCase)
		and: [aCompiledMethod selector beginsWith: #test]