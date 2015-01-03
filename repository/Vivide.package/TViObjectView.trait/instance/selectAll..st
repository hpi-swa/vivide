as yet unclassified
selectAll: someObjects
	"Select some objects. This works in a deferred way to allow multiple selections be converted into a single communication message to the pane."

	(self hasProperty: #currentSelection)
		ifFalse: [self setProperty: #currentSelection toValue: OrderedCollection new].

	(self valueOfProperty: #currentSelection)
		addAll: someObjects.
	
	WorldState addDeferredUIMessage: [self emitCurrentSelection].  