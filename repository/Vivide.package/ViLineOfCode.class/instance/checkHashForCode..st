as yet unclassified
checkHashForCode: code

	code asString hash in: [:newHash |
		codeHash ~= newHash ifTrue: [categories := Set new].
		codeHash := newHash].