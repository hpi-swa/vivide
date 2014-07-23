add/remove - columns
addColumnAfter: anotherColumn

	| column |
	column := ViEditorColumn new.

	anotherColumn
		ifNil: [self addMorphBack: column]
		ifNotNil: [self
			addMorph: column
			after: (self resizeHandleFor: anotherColumn)].
	
	self initializeColumn: column.  
	
	^ column