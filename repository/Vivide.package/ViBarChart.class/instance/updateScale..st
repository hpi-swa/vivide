updating
updateScale: newExtent

	| scale |
	self columns ifEmpty: [^ self].
	scale := newExtent y - self labelHeight - (2 * self layoutInset) / (self maxBarHeight max: 1).
	
	self columns do: [:column |
		| bar label h |
		bar := column submorphs second.
		[
		h := (bar valueOfProperty: #value ifAbsent: [0]).
		h < 0
			ifTrue: [h := min abs - h abs]
			ifFalse: [h := h abs + min].
		
		bar height:h* scale]
			on: Error do: [:err | bar height: 0]].
	
	"Update the invisible bar. For animations needed. Due to table layout ..."
	self maxColumn submorphs second height: (self maxBarHeight max: 1) * scale.