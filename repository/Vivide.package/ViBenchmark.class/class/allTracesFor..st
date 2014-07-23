as yet unclassified
allTracesFor: packageName

	| nums |
	nums := OrderedCollection new.
	
	SCoverageCollector updateCoverageForPackage: packageName.
	
	(PackageInfo named: packageName) classes
		select: [:c | (c inheritsFrom: TestCase) and: [c isAbstract not]]
		thenDo: [:c |
			(c shouldInheritSelectors
				ifTrue: [c allTestSelectors]
				ifFalse: [c testSelectors]) do: [:s |
				nums add: [SdCallgraphTracer new traceTest: c method: s] timeToRunWithoutGC]].
		
	^ {
	nums size.
	nums min.
	nums max.
	nums average asFloat.
	nums sum.
	nums median}