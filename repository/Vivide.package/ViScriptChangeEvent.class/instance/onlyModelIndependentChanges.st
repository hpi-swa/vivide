testing - script
onlyModelIndependentChanges

	#(notifier in out isProperty async before after) in: [:dependentProperties |
		^ (self oldProperties keys anySatisfy: [:prop | dependentProperties includes: prop]) not ]