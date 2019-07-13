updating
updateObject

	self doNonReentrant: [
		| spec |
		spec := Compiler evaluate: self fullSourceCode.
		"<block> -> <array> OR <symbol> -> <array> OR <symbol>"
	
		self
			assert: spec key isBlock;
			assert: spec key numArgs = 2.
	
		self scriptSourceCode
			ifNotNil: [:code | self object sourceCode: code]
			ifNil: [Error signal: 'No code recognized!'].
	
		"If it was new, is is not anymore after its first save operation."
		self thisStep setProperty: #isNew toValue: nil.   
		self updateObjectProperties: (Dictionary newFrom: spec value).

		self thisStep export].