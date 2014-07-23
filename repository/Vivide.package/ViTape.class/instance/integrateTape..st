initialization
integrateTape: aTape
	"Add all columns of the give tape at the end of myself."
	
	aTape columns do: [:column |
		self addMorphBack: column.
		self addResizeHandleFor: column.
		self connect: column signal: #editorDroppedInFrontOfMe: toSelector: #addColumnFor:inFrontOf: pattern: #(1 0).
		self connect: column signal: #editorDroppedAfterMe: toSelector: #addColumnFor:after: pattern: #(1 0)].