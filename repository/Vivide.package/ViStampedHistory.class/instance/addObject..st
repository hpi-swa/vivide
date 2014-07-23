add/remove
addObject: anObject

	self objects add: TimeStamp now -> anObject.
	self objectAdded: anObject.
	
	self ensureLimit.
	^ anObject