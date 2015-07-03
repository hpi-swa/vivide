processing
updateView: aMorph forEnvironment: anObject
	"Overridden to use new-style view references stored in properties. Those are classes or blocks. See TViObjectView trait and its implementors."

	^ ((self valueOfProperty: #view) ifNil: [ViProfile active defaultView]) in: [:classOrBlock |
			classOrBlock isBlock
				ifTrue: [classOrBlock
					cull: self
					cull: (aMorph ifNil: [Morph new])
					cull: anObject]
				ifFalse: [classOrBlock
					createFor: self
					orUpdate: (aMorph ifNil: [Morph new])
					in: anObject]]