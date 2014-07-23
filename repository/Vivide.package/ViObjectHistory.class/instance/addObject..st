add/remove
addObject: anObject

	self objects add: anObject.
	self objectAdded: anObject.
	
	self ensureLimit.
	^ anObject