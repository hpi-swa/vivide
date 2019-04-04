pane api
updateModelInput: newObjects

	self model ifNil: [^ self].
	(self hasProperty: #isReadingModel) ifTrue: [^ self].

	self model inputForChildren: self objects.
	self model reset.