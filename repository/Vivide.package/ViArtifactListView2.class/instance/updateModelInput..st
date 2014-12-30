pane api
updateModelInput: newObjects

	self model ifNil: [^ self].
	(self hasProperty: #isReadingModel) ifTrue: [^ self].

	self flag: #refactor. "mt: This only works with the root node because it has a ViQueyFillStep as first step."
	self model firstStep objects: self objects.
	self flag: #performance. "mt: Duplicate update possible. See #onObjectChange:."
	ViObjectChangeNotifier uniqueInstance objectChanged: newObjects first.