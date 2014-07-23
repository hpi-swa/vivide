searching - specific
searchImplementors: token

	| match selector |
	token ifEmpty: [
		resultList helpText: ('There are {1} classes in the system. Please refine your search query.'
			format: {Smalltalk allClasses size}).
		^ self].

	selector := token asSymbol.
	match := [:cls | (cls includesSelector: selector) or: [cls class includesSelector: selector]].
	
	self setSortBlock: self sortBlockForClasses.
	
	currentSource := #class.
	
	self
		startSearchIn: Smalltalk allClasses
		match: match.