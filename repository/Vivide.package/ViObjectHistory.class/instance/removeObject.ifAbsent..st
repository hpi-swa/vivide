add/remove
removeObject: anObject ifAbsent: errorBlock

	self objects remove: anObject ifAbsent: [^ errorBlock value].
	self objectRemoved: anObject.
	^ anObject