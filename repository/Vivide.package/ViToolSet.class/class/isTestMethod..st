as yet unclassified
isTestMethod: aCompiledMethod

	^ (aCompiledMethod methodClass inheritsFrom: TestCase)
		and: [aCompiledMethod selector beginsWith: #test]