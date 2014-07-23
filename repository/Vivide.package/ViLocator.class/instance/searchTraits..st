searching - specific
searchTraits: token

	| primaryMatch secondaryMatch |
	token
		ifEmpty: [primaryMatch := secondaryMatch := [:cls | true]]
		ifNotEmpty: [ 
			primaryMatch := [:cls | cls name asLowercase beginsWith: token asLowercase].
			secondaryMatch := [:cls | cls name includesSubstring: token caseSensitive: false]].

	self setSortBlock: (self
		sortBlockForMatch: primaryMatch
		then: self sortBlockForClasses).
	
	currentSource := #class.

	self
		startSearchIn: Smalltalk allTraits
		match: secondaryMatch.