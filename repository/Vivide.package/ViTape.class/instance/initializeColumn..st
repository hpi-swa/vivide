add/remove - columns
initializeColumn: aColumn

	self addResizeHandleFor: aColumn.
		
	self
		connect: aColumn signal: #editorDroppedInFrontOfMe:
		toSelector: #addColumnFor:inFrontOf: pattern: #(1 0).
	self
		connect: aColumn signal: #editorDroppedAfterMe:
		toSelector: #addColumnFor:after: pattern: #(1 0).