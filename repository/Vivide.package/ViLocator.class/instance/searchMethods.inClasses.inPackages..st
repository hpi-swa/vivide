searching - specific
searchMethods: token inClasses: classToken inPackages: pkgToken

	| primaryMatch secondaryMatch methods useRegex |
	(token size < 3 and: [token isEmpty or: [token first isAlphaNumeric]]) ifTrue: [
		resultList helpText: ('There are {1} methods in the system. Please refine your query. (>2 characters)'
			format: {SystemNavigation default allMethods size}).
		^ self].
	
	useRegex := false.
	
	primaryMatch := [:method | useRegex or: [method selector asLowercase beginsWith: token asLowercase]].
	secondaryMatch := [:method |
		((useRegex and: [method selector matchesRegexIgnoringCase: token])
			or: [method selector includesSubstring: token caseSensitive: false])
		and: [classToken ifEmpty: [true] ifNotEmpty: [
			(useRegex and: [method methodClass name matchesRegexIgnoringCase: classToken])
				or: [method methodClass name includesSubstring: classToken caseSensitive: false]]]].
	
	self setSortBlock: (self
		sortBlockForMatch: primaryMatch
		then: self sortBlockForMethods).
	
	currentSource := #method.
	
	self flag: #wrongObjects. "mt: Better use method references here to provide reliable objects for methods."
	methods := pkgToken
		ifEmpty: [SystemNavigation default allMethods]
		ifNotEmpty: [	(PackageOrganizer default packages
			select: [:pkg | pkg name includesSubstring: pkgToken caseSensitive: false])
			gather: [:pkg | pkg methods collect: [:ref | ref compiledMethod]]].
	
	self
		startSearchIn: methods
		match: secondaryMatch.