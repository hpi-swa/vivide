add/remove - columns
addColumnInFrontOf: anotherColumn

	| column |
	column := ViEditorColumn new.
	
	anotherColumn
		ifNil: [self addMorphFront: column]
		ifNotNil: [self
			addMorph: column
			inFrontOf: anotherColumn].
	
	self initializeColumn: column.  
		
	^ column