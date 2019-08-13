searching - specific
searchSenders: token
	"See SystemNavigation>>allCallsOn:."

	| match literal |
	token ifEmpty: [
		resultList helpText: ('There are {1} methods in the system. Please refine your search query.'
			format: {SystemNavigation default allMethods size}).
		^ self].
	
	literal := token asSymbol.
	match := [:method | method hasLiteral: literal].

	self setSortBlock: self sortBlockForMethods.
	
	currentSource := #class.
	
	self
		startSearchIn: SystemNavigation default allMethods
		match: match.