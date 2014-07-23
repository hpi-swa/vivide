geometry
visibleArea

	| b |
	self world ifNil: [^ 0].
	b := self boundsInWorld area.
	self world submorphsInFrontOf: self do: [:m |
		self flag: #stupid. "mt: Subtracts too much area if many windows are overlapping."
		b := b - (self boundsInWorld intersect: m boundsInWorld) area].
	^ b