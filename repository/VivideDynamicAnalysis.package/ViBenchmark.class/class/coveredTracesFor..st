as yet unclassified
coveredTracesFor: packageName

	| package nums |
	package := PackageInfo named: packageName.
	nums := OrderedCollection new.
	
	SCoverageCollector updateCoverageForPackage: packageName.

	package actualMethodsDo: [:method |
		| runs |
		runs := OrderedCollection new.

		method coveringTestMethods do: [:testMethod |
			runs add: [SdCallgraphTracer new
				traceTest: testMethod methodClass
				method: testMethod selector] timeToRunWithoutGC].
		runs ifNotEmpty: [nums add: runs sum]].

	^ {
	nums max.
	nums average asFloat.
	nums median}