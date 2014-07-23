drawing
drawTopLineOn: aCanvas
	
	self isFloating ifTrue: [^ self].
	
	aCanvas
		line: self topLeft to: self topRight color: (Color gray: 0.5);
		line: self topLeft + (0@1) to: self topRight + (0@1) color: (Color gray: 0.7).