as yet unclassified
emitCurrentSelection

	(self hasProperty: #currentSelection)
		ifFalse: [^ self].
	self selectionChanged: ((self valueOfProperty: #currentSelection)
		collect: [:object | Dictionary new
			at: #object put: object; yourself]).
	self removeProperty: #currentSelection.  