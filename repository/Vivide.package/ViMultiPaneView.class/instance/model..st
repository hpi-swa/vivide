as yet unclassified
model: anItemModel

	model := anItemModel.
	
	(model isKindOf: ViQueryNode) ifTrue: [
		self prepareForQuery: model firstStep].
	self panes ifNotEmpty: [self panes first model: model].