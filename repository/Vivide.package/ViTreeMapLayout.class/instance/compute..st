as yet unclassified
compute: aRootNode

	| scale result |
	scale := 200.
	polygons := OrderedCollection new.
	
	polygons add: ((PolygonMorph
		vertices: {0@0. scale@0. scale@scale. 0@scale}
		color: Color black
		borderWidth: 1
		borderColor: Color white)) .
	
	self computeVisualRepresentation: aRootNode parent: polygons last. 

	polygons do: [:p |
		p setProperty: #referencePosition toValue: 0@0].

	polygons do: [:p | p scale: 2.0].
	
	"
			topLeft: p topLeft * scale;
			extent: p extent * scale].	
"
	"liste von polygonmorphs"
	result := Morph new
		topLeft: polygons first topLeft;
		color: Color transparent;
		extent: scale asPoint.
				 
	result addAllMorphs: polygons.
	polygons first goBehind.
	
	^ result