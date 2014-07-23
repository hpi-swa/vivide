add/remove - columns
addResizeHandleFor: aColumn

	| resizeHandle container |
	container := ViColumnSeparator new.
		
	resizeHandle := ViResizeHandle new
		target: aColumn.
	
	self connect: aColumn signal: #deleted to: container selector: #delete.

	container addMorph: resizeHandle.

	self
		addMorph: container
		after: aColumn.