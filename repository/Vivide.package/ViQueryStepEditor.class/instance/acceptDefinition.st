memento - data
acceptDefinition

	self step definition: 
		(self step isReferenceStep
			ifTrue: [nil]
			ifFalse: [self currentDefinition]).
			
	self ui definitionEdit updateForDefinition.
	
	"Put it in the archive."
	self step definition ifNotNil: [:def |
		ViQuerySerializer
			updateDefinition: def
			inQueryArchive: ViQueryArchive].