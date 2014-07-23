searching - specific
searchPackages: token

	| primaryMatch secondaryMatch |
	currentSource := #package.
	
	token ifEmpty: [
		self setSortBlock: self sortBlockForPackages.  
		^ self
			startSearchIn: PackageOrganizer default packages
			match: [:obj | true]].
		
	primaryMatch := [:pkg | pkg name asLowercase beginsWith: token asLowercase].
	secondaryMatch := [:pkg | pkg name includesSubstring: token caseSensitive: false].
	
	self setSortBlock: (self
		sortBlockForMatch: primaryMatch
		then: self sortBlockForPackages).
	
	self
		startSearchIn: PackageOrganizer default packages
		match: secondaryMatch.