as yet unclassified
overheadForCoverage: packageName

	| suite testCases r1 r2 |
	testCases := (PackageInfo named: packageName) classes select: [:c |
		(c inheritsFrom: TestCase) and: [c isAbstract not]].
		
	r1 := [suite := TestSuite new.		
		testCases do: [:c | c addToSuiteFromSelectors: suite].
		suite run] timeToRunWithoutGC.
	
	r2 := [SCoverageCollector updateCoverageForPackage: packageName] timeToRunWithoutGC.
	
	^ {r1. r2}