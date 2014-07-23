dropping - geometry
dropRectanglesForPoint: aTarget

	aTarget == #full
		ifTrue: [^ {self bounds}].
	
	aTarget == #left
		ifTrue: [^ {self topLeft corner: (self left + self areaThicknessLeft) @ self bottom}].
		
	aTarget == #right
		ifTrue: [^ {self right - self areaThicknessRight @ self top corner: self bottomRight}].
	
	aTarget == #between ifTrue: [
		^ self submorphs gather: [:m |
			{m topLeft corner: m bottomRight - (0@ (m height // 2)).
			m topLeft + (0@ (m height // 2)) corner: m bottomRight}]].
	
	^ #()