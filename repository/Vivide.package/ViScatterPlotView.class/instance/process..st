updating
process: model

	| minVal maxVal offset w |
	graph removeAllMorphs.
	topLabel contents: ((topLabel valueOfProperty: #builder) value cull: model objects) asString.

	model nodesDo: [:node |
		minVal
			ifNil: [minVal := node at: #point]
			ifNotNil: [minVal := minVal min: (node at: #point)].
		maxVal
			ifNil: [maxVal := node at: #point]
			ifNotNil: [maxVal := maxVal max: (node at: #point)]].

	minVal ifNil: [^ self "no nodes"].

	xAxis
		minVal: minVal x - (xAxis incVal * 0.1);
		maxVal: maxVal x + (xAxis incVal * 0.1).
	yAxis
		minVal: minVal y - (yAxis incVal * 0.25);
		maxVal: maxVal y + (yAxis incVal * 0.25).
	
	w := (topLabel font widthOf: $.) * 2.
	
	model nodesDo: [:node | | pt f |
		pt := node at: #point ifAbsent: [0@0].		
		
		f := (xAxis ratioOf: pt x) @ (1.0 - (yAxis ratioOf: pt y)).
		"pt := pt - (xAxis minVal @ yAxis minVal)."
		
		graph addMorph: (CircleMorph new
			extent: w@w;
			borderWidth: 0;
			"center: pt
				* (xAxis scaleFactor @ yAxis scaleFactor negated)
				+ graph bottomLeft;"
			layoutFrame: (LayoutFrame fractions: (f corner: f) offsets: ((w@w) // -2 corner: 0@0));
			in: [:m | self configureSubmorph: m forNode: node];
			yourself)].