as yet unclassified
numberOfTestsFor: packageName

	| selectors |
	selectors := OrderedCollection new.

	(PackageInfo named: packageName) classes
		select:[:c | (c inheritsFrom: TestCase) and: [c isAbstract not]]
		thenDo: [:c | c shouldInheritSelectors
			ifTrue: [selectors addAll: c allTestSelectors]
			ifFalse: [selectors addAll: c testSelectors]].
		
	^ selectors size