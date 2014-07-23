as yet unclassified
reset

	self model ifNotNil: [:m |
		(m isKindOf: ViQueryNode) ifTrue: [
			self prepareForQuery: m firstStep].
		self panes ifNotEmpty: [self panes first model: m]].