as yet unclassified
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	(showCursorPosition and: [cursorPosition notNil])
		ifTrue: [
			
			aCanvas
				line: cursorPosition x + 1 + self left -1 @ self top
				to: cursorPosition x + 1 + self left -1 @ self bottom
				color: Color gray;
				line: self left @ (cursorPosition y + 1 + self top -1)
				to: self right @ (cursorPosition y + 1 + self top -1)
				color: Color gray.
		
			aCanvas
				line: cursorPosition x + self left -1 @ self top
				to: cursorPosition x + self left -1 @ self bottom
				color: Color white;
				line: self left @ (cursorPosition y + self top -1)
				to: self right @ (cursorPosition y + self top -1)
				color: Color white].