deferred objects
objectsDeferred: someObjects
	
	self isVisible
		ifTrue: [self objects: someObjects]
		ifFalse: [deferredObjects := someObjects].