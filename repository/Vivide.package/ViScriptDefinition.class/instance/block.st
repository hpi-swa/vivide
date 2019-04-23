accessing
block

	^ block ifNil: [block := Compiler evaluate: self sourceCode]