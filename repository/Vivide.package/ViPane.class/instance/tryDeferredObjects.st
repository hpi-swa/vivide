updating - deferred objects
tryDeferredObjects

	(self hasProperty: #shouldSetObjects) ifTrue: [
		self removeProperty: #shouldSetObjects.
		self deferredObjects].