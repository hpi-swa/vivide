as yet unclassified
updateView: aMorph forEnvironment: anObject

	^ (self valueOfProperty: #view)
		ifNil: [super updateView: aMorph forEnvironment: anObject]
		ifNotNil: [:classOrBlock |
			classOrBlock isBlock
				ifTrue: [classOrBlock
					cull: self
					cull: (aMorph ifNil: [Morph new])
					cull: anObject]
				ifFalse: [classOrBlock
					createFor: self
					orUpdate: (aMorph ifNil: [Morph new])
					in: anObject]]