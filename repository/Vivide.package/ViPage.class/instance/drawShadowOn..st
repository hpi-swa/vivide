drawing
drawShadowOn: aCanvas

	aCanvas
		line: self topRight + (0@3)
		to: self bottomRight
		color: (Color black alpha: 0.65).
		
	aCanvas
		line: self bottomLeft + (3@0)
		to: self bottomRight
		color: (Color black alpha: 0.65).
		
	aCanvas
		line: self topRight + (1@4)
		to: self bottomRight + (1@0)
		color: (Color black alpha: 0.5).
		
	aCanvas
		line: self bottomLeft + (4@1)
		to: self bottomRight + (0@1)
		color: (Color black alpha: 0.5).