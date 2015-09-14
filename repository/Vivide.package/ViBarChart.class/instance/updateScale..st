updating
updateScale: newExtent

	| scale |
	self columns ifEmpty: [^ self].
	scale := newExtent y / (max max: 1).
	
	self columns do: [:column |
		| bar |
		bar := column submorphs second.
		bar height: (bar valueOfProperty: #value ifAbsent: [0]) * scale].