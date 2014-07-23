drawing
drawSeparatorsOn: aCanvas

	| offset |
	offset := 0.
	self submorphs do: [:s | offset := s bottom] separatedBy: [
		aCanvas
			line: self left @ offset
			to: self right @ offset
			width: 1
			color: (Color gray: 0.85) darker.
		aCanvas line: self left @ (offset+1) to: self right @ (offset+1) width: 1 color: (Color black alpha: 0.8).
		aCanvas line: self left @ (offset-1) to: self right @ (offset-1) width: 1 color: (Color black alpha: 0.8).
		aCanvas line: self left @ (offset+2) to: self right @ (offset+2) width: 1 color: (Color black alpha: 0.5).
		aCanvas line: self left @ (offset+3) to: self right @ (offset+3) width: 1 color: (Color black alpha: 0.2)].