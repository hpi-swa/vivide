initialization
setUp: script

	tileSize := (script valueOfProperty: #tileSize ifAbsent: [1]) asPoint.
	self color: (script valueOfProperty: #color ifAbsent: [Color transparent]).
	self fillStyle: (script valueOfProperty: #fillStyle ifAbsent: [SolidFillStyle color: self color]) value. 