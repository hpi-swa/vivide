listening
notifyChangedSelection: selectedNodes

	(self hasProperty: #isUpdating) ifTrue: [^ self].
	(selectedNodes collect: [:node | node at: #object]) in: [:objects |
		self listenersForSelections do: [:msg |
			msg valueWithArguments: {objects.self}]].