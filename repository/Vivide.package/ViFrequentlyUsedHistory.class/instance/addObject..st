add/remove
addObject: anObject

	self frequencies
		at: anObject
		put: (self frequencies at: anObject ifAbsent: [0]) + 1.

	(self objects includes: anObject)
		ifTrue: [
			self objects remove: anObject.
			self objects addFirst: anObject.
			self updateOrder]
		ifFalse: [
			self objects addFirst: anObject.
			self updateOrder.
			self ensureLimit].

	self normalizeFrequencies.

	self objectAdded: anObject.
	^ anObject