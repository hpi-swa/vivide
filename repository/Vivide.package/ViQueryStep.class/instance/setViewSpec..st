accessing - OBSOLETE
setViewSpec: blockOrSymbol
	"Shortcut. For scripting purposes."

	blockOrSymbol isSymbol ifTrue: [
		(self organization definitionById: blockOrSymbol)
			ifNil: [^ self]
			ifNotNil: [:def |
				self viewDefinition: def.
				^ self]].

	self viewDefinition: (ViQueryViewDefinition new
		sourceCode: blockOrSymbol decompile decompileString;
		yourself).