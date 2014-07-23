as yet unclassified
= other

	self flag: #fishy. "mt: Consider step, context and stack? I.e., possible children? AVOID generating children here!"
	^ super = other
	"and: [
		((self species = other species
			and: [self firstStep = other firstStep])
			and: [self context = other context])
			and: [self referenceStack = other referenceStack]]"