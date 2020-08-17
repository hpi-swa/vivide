navigation - ast
detectObjectTransformation: innerNode
	"Skip all parent nodes that do no actual object transformation."
	
	| nonTransformationTokens |
	nonTransformationTokens := #( ifTrue ifFalse ifNil ifNotNil ifEmpty ifNotEmpty ifNone in and or collectWithIndex withIndexCollect do doWithIndex withIndexDo pairsDo gather ->).
	
	self flag: #performance. "mt: ??"
	^ innerNode parents
		reverseDetect: [:node | 
			node isBlock
				and: [node parent isMessage]
				and: [ (node parent selector findTokens: $:) noneSatisfy: [:token |
					nonTransformationTokens includes: token]]]
		ifNone: [innerNode]