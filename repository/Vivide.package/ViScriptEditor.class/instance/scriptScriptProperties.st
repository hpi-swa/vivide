source code
scriptScriptProperties
	"Extract that part of fullSourceCode that represents the script's script properties. Merge duplicate keys."

	^ OrderedDictionary newFromAny: (self fullSourceCode
		ifNil: [{}]
		ifNotNil: [:expression | (Compiler evaluate: expression) value])