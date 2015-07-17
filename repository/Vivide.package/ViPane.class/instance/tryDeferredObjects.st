as yet unclassified
tryDeferredObjects

	(self hasProperty: #shouldSetObjects) ifTrue: [
		self removeProperty: #shouldSetObjects.
		self deferredObjects].