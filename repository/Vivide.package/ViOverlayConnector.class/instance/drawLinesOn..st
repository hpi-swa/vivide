drawing
drawLinesOn: aCanvas
	"Just connect two morphs for now. "
	
	| middle source target |
	source := self sourceMorphs first.
	target := self targetMorphs first.
	
	middle := (source point: source center in: self owner) - (((source point: source center in: self owner) - 
		(target point: target center in: self owner)) // 2).

	aCanvas
		line: ((source boundsIn: self owner) pointNearestTo: middle)
		to: ((target boundsIn: self owner) pointNearestTo: middle)
		width: 5
		color: Color orange.