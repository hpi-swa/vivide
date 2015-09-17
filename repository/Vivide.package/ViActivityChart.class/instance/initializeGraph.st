as yet unclassified
initializeGraph

	| graph |
	graph := PolygonMorph
		vertices: ((1 to: self numberOfPoints) collect: [:ea | ea @ 1]), {self numberOfPoints @ 1 . 1@1}
		color: (Color gray: 0.8)
		borderWidth: 1
		borderColor: (Color gray: 0.6).
 
	graph
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		width: self width.
 
	self graphs add: (OrderedCollection new: self numberOfPoints withAll: 0).

	self addMorphBack: graph.