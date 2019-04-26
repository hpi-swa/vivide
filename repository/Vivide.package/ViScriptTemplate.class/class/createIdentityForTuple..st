templates - support
createIdentityForTuple: someClasses
	"Creates a script that does not modify its input tuples for the given types."
	
	| decl | 
	decl := (self generateBlockVarDeclarationFor: someClasses)
		withBlanksTrimmed.
	^ ('[{1} | \{{2}\} asTuples]' format: {
		decl.
		decl allButFirst copyReplaceAll: ' :' with: '. '}) asScript
			setProperty: #inputKind toValue: (Array new: someClasses size);
			yourself