pane api
updateModelInput: newObjects

	self model ifNil: [^ self].
	
	"See #onObjectsChanged."
	(self hasProperty: #isReadingModel) ifTrue: [^ self].

	self setProperty: #isReadingModel toValue: true.
	[self model inputForChildren: self objects. self onObjectsChanged]
		ensure: [self removeProperty: #isReadingModel].