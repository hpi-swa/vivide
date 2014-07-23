signals - callbacks
onQueryEvaluated

	self queryModel objects in: [:objs |
		self flag: #hideCollections. "mt: Wrap objects into a single collection, except for texts."
		self objectsChanged:
			((objs allSatisfy: [:o | o isText])
				ifTrue: [objs]
				ifFalse: [{objs}])].