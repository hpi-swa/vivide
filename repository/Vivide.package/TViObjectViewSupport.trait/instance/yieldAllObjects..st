updating
yieldAllObjects: someObjects
	"Select some objects. This works in a deferred way to allow multiple selections be converted into a single communication message to the pane."

	(self hasProperty: #objectsToYield)
		ifFalse: [self setProperty: #objectsToYield toValue: OrderedCollection new].

	(self valueOfProperty: #objectsToYield)
		addAll: someObjects.
	
	WorldState addDeferredUIMessage: [self doYieldAllObjects].