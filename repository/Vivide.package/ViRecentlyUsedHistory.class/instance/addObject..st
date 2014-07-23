add/remove
addObject: anObject
	
	self removeObject: anObject ifAbsent: [].
	self objects addFirst: anObject.
	self objectAdded: anObject.
	
	self ensureLimit.
	^ anObject