searching - specific
searchSenders: token
	"See SystemNavigation>>allCallsOn:."

	| match literal special thorough byte |
	token ifEmpty: [
		resultList helpText: ('There are {1} methods in the system. Please refine your search query.'
			format: {SystemNavigation default allMethods size}).
		^ self].
	
	literal := token asSymbol.

	special := Smalltalk hasSpecialSelector: literal ifTrueSetByte: [ :b | byte := b ].
	"Possibly search for symbols imbedded in literal arrays"
	thorough := literal isSymbol and: [ Preferences thoroughSenders ].

	match := [:method | ((thorough
			ifFalse: [ method hasLiteral: literal ]
			ifTrue: [ method hasLiteralThorough: literal ]) or: [
				special and: [ method scanFor: byte ] ]) and: [
			literal isVariableBinding not or: [(method indexOfLiteral: literal) ~= 0]]].

	self setSortBlock: self sortBlockForMethods.
	
	currentSource := #class.
	
	self
		startSearchIn: SystemNavigation default allMethods
		match: match.