as yet unclassified
initialize

	| c1 c2 |
	super initialize.
	
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight.

	xAxis := ViGraphAxis new
		orientation: #horizontal;
		yourself.
	yAxis := ViGraphAxis new
		orientation: #vertical;
		yourself.
	
	topLabel := StringMorph
		contents: 'ViScatterPlotView'
		font: TextStyle defaultFont.
	
	graph := Morph new
		color: Color transparent;
		borderWidth: 2;
		borderColor: Color black;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: ProportionalLayout new;
		yourself.
	self configureSelectionOn: graph.
	
	c1 := Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap; rubberBandCells: true;
		vResizing: #spaceFill;
		yourself.

	c1 addAllMorphs: {
		Morph new height: topLabel fullBounds height; hResizing: #spaceFill; color: Color transparent.
		yAxis.
		Morph new height: xAxis fullBounds height; hResizing: #spaceFill; color: Color transparent.
	}.

	c2 := Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	
	c2 addAllMorphs: {topLabel. graph. xAxis}.

	self addAllMorphs: {c1. c2}.