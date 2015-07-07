as yet unclassified
computeVisualRepresentation: node parent: polygon

	| results offset relExtent nodeCount |
	node hasChildren ifFalse: [^ self].
	
	results := OrderedCollection new.
	offset := 0.

	"horizontal"
	relExtent := (polygon vertices first - polygon vertices third) abs.
	
	(relExtent x = 0 or: [relExtent y = 0])
		ifTrue: [^ self].
	
	offset := 0.
	nodeCount := node nodes size.
	node nodes doWithIndex: [:n :i | |rel|
		rel := ((n at: #weight) / (node at: #weight) asFloat) asPoint.
		rel := rel * relExtent.
		node depth even
			ifTrue: [
				n at: #hue put: (i / nodeCount * 360).
				
				results add: {n. (PolygonMorph vertices: {
				polygon vertices first + (offset@0).
				polygon vertices first + ((offset + rel x) @0).
				polygon vertices first + ((offset + rel x) @ relExtent y).
				polygon vertices first + (offset @ relExtent y)}
				color: (Color h: (n at: #hue) s: 1.0 v: 1.0) 
				borderWidth: 1
				borderColor: Color white) }.
				offset := offset + rel x.]
			ifFalse: [
				
				
				results add: {n. (PolygonMorph vertices: {
				polygon vertices first + (0@offset).
				polygon vertices first + (0@ (offset + rel y)).
				polygon vertices first + (relExtent x @ (offset + rel y)).
				polygon vertices first + (relExtent x @ offset)}
				color: (Color h: (node at: #hue) s: (i / nodeCount) v: 1.0) 
				borderWidth: 1
				borderColor: Color white) }.
				offset := offset + rel y.].
			].
	
	results do: [:result |
		self computeVisualRepresentation: result first parent: result second].

	results do: [:pair | polygons add: pair second].