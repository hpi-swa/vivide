as yet unclassified
newFrom: selectorMap

	selectorMap isArray
		ifTrue: [^ self newFrom: (Dictionary newFrom: selectorMap)].
		
	^ (super newFrom: selectorMap)
		enabledSelector: (selectorMap at: #enabled ifAbsent: []);
		clickedSelector: (selectorMap at: #clicked ifAbsent: []);
		yourself