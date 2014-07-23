pane api
reset

	self setProperty: #isReadingModel toValue: true.
	self objects: (self model ifNil: [#()] ifNotNil: [:m |
		m groups gather: [:group | (1 to: (m childCountInGroup: group)) collect: [:idx |
			(m childAt: idx inGroup: group) at: #object]]]).
	self removeProperty: #isReadingModel.