deferred objects
updateWithDeferredObjects

	deferredObjects ifNil: [^ self].

	self objects: deferredObjects.

	deferredObjects := nil.