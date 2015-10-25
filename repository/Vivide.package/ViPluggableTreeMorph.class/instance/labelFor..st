as yet unclassified
labelFor: node

	self treeMorph columns ifEmpty: [^ node at: #text].

	^ ((1 to: self treeMorph columns size)
		collect: [:i | node at: (i asString, '_text') asSymbol])
		joinSeparatedBy: String tab