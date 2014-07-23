as yet unclassified
coverageFor: packageName

	| package nums methods nonTestMethods |
	package := PackageInfo named: packageName.
	
	"ViCoverageInstrumentor updateCoverageForPackage: packageName."
	
	nums := OrderedCollection new.

	package actualMethodsDo: [:method |
		nums add: method coveringTestMethods size].

	methods := package methods collect: [:m | m compiledMethod].
	nonTestMethods := (methods reject: [:m | m isTestMethod]).

	^ {
	nonTestMethods size.
	self numberOfTestsFor: packageName.
	nums average asFloat.
	(nums reject: [:i | i = 0]) size.
	(nums reject: [:i | i = 0]) average asFloat.
	(nums reject: [:i | i = 0]) median.
	(nums reject: [:i | i = 0]) size / nonTestMethods size asFloat.
	nums max}