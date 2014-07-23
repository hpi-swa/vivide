drawing
drawTopLineOn: aCanvas
	
	aCanvas
		line: self topLeft to: self topRight - (1@0) color: (Color gray: 0.5);
		line: self topLeft + (0@1) to: self topRight + (-1 @1) color: (Color gray: 0.7).