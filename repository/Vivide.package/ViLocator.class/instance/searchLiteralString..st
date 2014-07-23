searching - specific
searchLiteralString: tokens

	| match |
	tokens ifEmpty: [
		resultList helpText: ('There are {1} methods in the system. Please refine your search query.'
			format: {SystemNavigation default allMethods size}).
		^ self].
	
	match := [:method | 
		tokens allSatisfy: [:token |
			method  hasLiteralSuchThat: [:lit |
				(lit isString and: [lit isSymbol not]) and:
				[lit includesSubstring: token caseSensitive: false]]]].
			
	self setSortBlock: self sortBlockForMethods.
	
	currentSource := #method.
	
	self
		startSearchIn: SystemNavigation default allMethods
		match: match.