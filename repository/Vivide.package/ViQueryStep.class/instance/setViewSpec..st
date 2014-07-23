as yet unclassified
setViewSpec: block
	"Shortcut. For scripting purposes."

	self viewDefinition: (ViQueryViewDefinition new
		sourceCode: block decompile decompileString;
		yourself).