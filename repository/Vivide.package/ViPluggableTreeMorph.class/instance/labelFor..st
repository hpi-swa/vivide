as yet unclassified
labelFor: node

	self treeMorph columns ifEmpty: [^ node at: #text].

	^ ((1 to: self treeMorph columns size)
		collect: [:i | ((node at: (i asString, '_text') asSymbol) ifNil: [
			i = 1 ifFalse: [''] ifTrue: [(node at: #object)]]) asString withSeparatorsCompacted])
		joinSeparatedBy: String tab