as yet unclassified
onlyViewIndependentChanges

	#(id inputKind outputKind in out isNew copyOf) in: [:independentProperties |
		^ self oldProperties keys allSatisfy: [:prop | independentProperties includes: prop] ]