drawing
drawTopLineOn: aCanvas
	
	| gradient |
	self isFloating ifTrue: [^ super drawTopLineOn: aCanvas].
	
	gradient := (GradientFillStyle ramp: {
			0.0 -> Color red.
			0.8 -> (Color gray: 0.85)})
		origin: self header topCenter;
		direction: 0 @ (self header height * 1.2);
		radial: true;
		normal: self header width // 2 @ 0.
	
	aCanvas
		fillRectangle: self header bounds
		fillStyle: gradient.
		
	aCanvas
		line: self topLeft to: self topRight color: ((Color gray: 0.5) "alpha: 0.5");
		line: self topLeft + (0@1) to: self topRight + (0@1) color: (Color gray: 0.7).