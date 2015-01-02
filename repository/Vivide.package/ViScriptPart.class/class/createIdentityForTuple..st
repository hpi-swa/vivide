as yet unclassified
createIdentityForTuple: someClasses
	"Creates a script that does not modify its input tuples for the given types."
	
	| decl | 
	decl := (ViScriptEditor generateBlockVarDeclarationFor: someClasses)
		withBlanksTrimmed.
	^ ('[{1} | \{{2}\} asTuples]' format: {
		decl.
		decl allButFirst copyReplaceAll: ' :' with: '. '}) asScript
			setProperty: #inputKind toValue: someClasses copy;
			yourself