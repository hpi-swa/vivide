pane api
reset

	"We can change the input of the root node on purpose. Avoid resetting all artifact containers. See #updateModelInput:."
	(self hasProperty: #isReadingModel)
		ifTrue: [^ self].
		
	self setProperty: #isReadingModel toValue: true.
	[
		self objects: (self model ifNil: [#()] ifNotNil: [:m |
			m groups gather: [:group | (1 to: (m childCountInGroup: group)) collect: [:idx |
				(m childAt: idx inGroup: group) at: #object]]]).
	] ensure: [self removeProperty: #isReadingModel].