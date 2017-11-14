updating
updateScale: newExtent

	| scale |
	self columns ifEmpty: [^ self].
	scale := newExtent y - self labelHeight / (max max: 1).
	
	self columns do: [:column |
		| bar label |
		bar := column submorphs second.
		[bar height: (bar valueOfProperty: #value ifAbsent: [0]) * scale]
			on: Error do: [:err | bar height: 0]].