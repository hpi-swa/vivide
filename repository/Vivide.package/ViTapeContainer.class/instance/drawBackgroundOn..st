drawing
drawBackgroundOn: aCanvas

	self background ifNil: [^ self].
	
	aCanvas
		clipBy: self bounds
		during: [:c | c
			paintImage: self background
			at: self topLeft - ((self background width - self width)@0)].