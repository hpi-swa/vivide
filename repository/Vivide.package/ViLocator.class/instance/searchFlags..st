searching - specific
searchFlags: token

	| match |
	match := token
		ifEmpty: [[:flag | true]]
		ifNotEmpty: [:t | [:flag | flag symbol includesSubstring: t caseSensitive: false]].
	
	self setSortBlock: [:flag1 :flag2 | flag1 symbol <= flag2 symbol].
	
	currentSource := #method.
	
	self
		startSearchIn: SystemNavigation default allFlagComments
		match: match.