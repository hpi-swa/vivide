accessing
author

	^ author ifNil: [author := (self stamp
		ifNil: ['-']
		ifNotNil: [:s | (s asString subStrings: ' ') ifEmpty: ['-'] ifNotEmpty: [:tokens | (tokens select: [:token | token first isLetter]) inject: '' into: [:nm :t | nm, ' ', t]]])]