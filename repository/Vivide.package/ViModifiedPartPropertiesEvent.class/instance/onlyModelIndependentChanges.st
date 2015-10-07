as yet unclassified
onlyModelIndependentChanges

	#(notifier in out isProperty isReference async) in: [:dependentProperties |
		^ (self oldProperties keys anySatisfy: [:prop | dependentProperties includes: prop]) not ]