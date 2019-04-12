as yet unclassified
detectObjectTransformation: innerNode
	"Skip all parent nodes that do no actual object transformation."
	
	^ innerNode parents reverseDetect: [:node | 
		node isBlock
			and: [node parent isMessage]
			and: [(#(
				#ifTrue: #ifFalse: #ifTrue:ifFalse: #ifFalse:ifTrue:
				#ifNil: #ifNotNil:
				#ifEmpty: #ifNotEmpty: #ifEmpty:ifNotEmpty: #ifNotEmpty:ifEmpty: 
				#in:
				#and: #or:
				#collectWithIndex: #withIndexCollect:
				#gather:
				
				) identityIncludes: node parent selector) not]]