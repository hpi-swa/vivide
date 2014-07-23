searching - specific
searchSourceString: tokens

	| match |
	tokens ifEmpty: [
		resultList helpText: ('There are {1} methods in the system. Please refine your search query.'
			format: {SystemNavigation default allMethods size}).
		^ self].
	
	match := [:method | 
		| source |
		source := 	method getSource asString.
		tokens allSatisfy: [:token | source includesSubstring: token caseSensitive: false]].
			
	self setSortBlock: self sortBlockForMethods.
	
	currentSource := #method.
	
	self
		startSearchIn: SystemNavigation default allMethods
		match: match.