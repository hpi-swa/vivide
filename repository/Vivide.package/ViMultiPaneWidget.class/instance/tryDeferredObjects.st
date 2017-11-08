accessing - pane api
tryDeferredObjects

	(self hasProperty: #shouldSetObjects) ifTrue: [
		self removeProperty: #shouldSetObjects.
		self deferredObjects].