as yet unclassified
methodsToTestsFor: packageName

	| packageInfo result cm |
	packageInfo := PackageInfo named: packageName.
	result := OrderedCollection new.
	cm := (packageInfo methods
		select: [:m | m compiledMethod coveringTestMethods size > 20]
		thenCollect: [:m | m compiledMethod]).

	Transcript cr; show: cm size.
	
	cm do: [:method1 | cm do: [:method2 |
		method1 ~~ method2 ifTrue: [
		result add: (method1 coveringTestMethods, method2 coveringTestMethods) size
			]]].
	
	^ {
	result size.
	result average asFloat.
	result max.
	result min.
	result median}