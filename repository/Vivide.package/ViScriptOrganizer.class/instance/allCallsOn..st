navigation
allCallsOn: literal
	"See SystemNavigation >> allCallsOn:."
	
	| special |
	special := BytecodeEncoder canBeSpecialLiteral: literal.
	^ self orderedDefinitions select: [:def |
		def block notNil and: [def block method hasLiteral: literal scanForSpecial: special]]