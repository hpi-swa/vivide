navigation
allCallsOn: literal
	"See SystemNavigation >> allCallsOn:."
	
	| special thorough byte |
	^ self orderedDefinitions select: [:def |
		special := Smalltalk hasSpecialSelector: literal ifTrueSetByte: [ :b | byte := b ].
		"Possibly search for symbols imbedded in literal arrays"
		thorough := literal isSymbol and: [ Preferences thoroughSenders ].

		((thorough
			ifFalse: [ def block method hasLiteral: literal ]
			ifTrue: [ def block method hasLiteralThorough: literal ]) or: [
				special and: [ def block method scanFor: byte ] ]) and: [
			literal isVariableBinding not or: [(def block method indexOfLiteral: literal) ~= 0]]].