as yet unclassified
searchRecentChanges: token

	| secondaryMatch methods |	
	secondaryMatch := [:method | (token isEmpty or: [method selector includesSubstring: token caseSensitive: false])
		and: [[(TimeStamp now - (TimeStamp fromMethodTimeStamp: method timeStamp)) asSeconds // 3600 "hours" <= 2] on: Error do: [false]]].
	
	self setSortBlock: [:m1 :m2 | (TimeStamp fromMethodTimeStamp: m1 timeStamp) >= (TimeStamp fromMethodTimeStamp: m2 timeStamp)].
	
	currentSource := #method.
	
	self flag: #wrongObjects. "mt: Better use method references here to provide reliable objects for methods."
	methods := SystemNavigation default allMethods.
	
	self
		startSearchIn: methods
		match: secondaryMatch.