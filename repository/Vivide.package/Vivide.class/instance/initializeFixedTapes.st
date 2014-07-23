initialization
initializeFixedTapes

	leftFixedTape := ViFixedTape new vResizing: #spaceFill.
	rightFixedTape := ViFixedTape new vResizing: #spaceFill.
	
	self connect: tapeContainer signal: #editorDroppedInFrontOfMe: to: leftFixedTape selector: #addColumnFor:.
	self connect: tapeContainer signal: #editorDroppedAfterMe: to: rightFixedTape selector: #addColumnFor:.