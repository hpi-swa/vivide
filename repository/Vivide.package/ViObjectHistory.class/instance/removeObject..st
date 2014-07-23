add/remove
removeObject: anObject

	^ self removeObject: anObject ifAbsent: [self error: 'Object is not in history.']