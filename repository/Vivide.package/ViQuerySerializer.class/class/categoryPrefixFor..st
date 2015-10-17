support
categoryPrefixFor: abstractQueryPart

	^ abstractQueryPart category
		ifNil: ['']
		ifNotNil: [:c | '*', c, '-']