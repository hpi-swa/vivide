searching - specific
searchLocals: token
	
	| primaryMatch secondaryMatch |
	currentSource := #locals.

	token ifEmpty: [
		self setSortBlock: self sortBlockForObjects.  
		^ self
			startSearchIn: self localObjects
			match: [:obj | true]].
	
	primaryMatch := [:object | (ViLabelService doObject: object) asString beginsWith: token].
	secondaryMatch := [:object | (ViLabelService doObject: object) asString includesSubstring: token caseSensitive: false].
			
	self setSortBlock: (self
		sortBlockForMatch: primaryMatch
		then: self sortBlockForObjects).
	
	self
		startSearchIn: self localObjects
		match: secondaryMatch.