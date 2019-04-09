source code
scriptScriptProperties
	"Extract that part of fullSourceCode that represents the script's script properties."

	^ Dictionary newFrom: (
		self fullSourceCode
			ifNil: [{}]
			ifNotNil: [:expression | (Compiler evaluate: expression) value])