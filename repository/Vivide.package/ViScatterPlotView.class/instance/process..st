updating
process: model

	| minVal maxVal offset w count margin |
	graph removeAllMorphs.
	topLabel contents: ((topLabel valueOfProperty: #builder) cull: model objects) asString.

	count := 0.
	model nodesDo: [:node |
		count := count + 1.
		minVal
			ifNil: [minVal := node at: #point]
			ifNotNil: [minVal := minVal min: (node at: #point)].
		maxVal
			ifNil: [maxVal := node at: #point]
			ifNotNil: [maxVal := maxVal max: (node at: #point)]].

	minVal ifNil: [^ self "no nodes"].

	w := (topLabel font widthOf: $.) * 2.

	"Adds space around field in terms of point diameter."
	xAxis minVal: minVal x; maxVal: maxVal x.
	count > 1 ifTrue: [xAxis addMargins: w].
	yAxis minVal: minVal y; maxVal: maxVal y.
	count > 1 ifTrue: [yAxis addMargins: w].
	
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
		
	self yieldSelectionOn: graph.