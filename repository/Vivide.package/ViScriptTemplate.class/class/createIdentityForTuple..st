templates - support
createIdentityForTuple: someClasses
	"Creates a script that does not modify its input tuples for the given types."
	
	| decl isTuples |
	decl := (self generateBlockVarDeclarationFor: someClasses)
		withBlanksTrimmed.
	isTuples := someClasses size > 1.
	
	^ ((isTuples ifTrue: ['[{1} | \{{2}\} asTuples]'] ifFalse: ['[{1} | {2}]']) format: {
		decl.
		decl allButFirst copyReplaceAll: ' :' with: '. '}) asScript
			setProperty: #inputKind toValue: (Array new: someClasses size);
			yourself