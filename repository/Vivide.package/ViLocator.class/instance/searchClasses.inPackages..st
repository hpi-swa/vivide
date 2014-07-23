searching - specific
searchClasses: token inPackages: pkgToken

	| primaryMatch secondaryMatch |
	token size < 3 ifTrue: [
		resultList helpText: ('There are {1} classes in the system. Please refine your query. (>2 characters)'
			format: {Smalltalk allClasses size}).
		^ self].
	
	primaryMatch := [:cls | cls name asLowercase beginsWith: token asLowercase].
	secondaryMatch := [:cls | (cls name includesSubstring: token caseSensitive: false)
		and: [pkgToken ifEmpty: [true] ifNotEmpty: [
			(PackageOrganizer default packageOfClass: cls ifNone: [])
				ifNil: [false]
				ifNotNil: [:pkg | pkg name includesSubstring: pkgToken caseSensitive: false]]]].

	self setSortBlock: (self
		sortBlockForMatch: primaryMatch
		then: self sortBlockForClasses).
	
	currentSource := #class.

	self
		startSearchIn: Smalltalk allClasses
		match: secondaryMatch.