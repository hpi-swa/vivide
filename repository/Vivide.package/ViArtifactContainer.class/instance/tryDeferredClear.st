as yet unclassified
tryDeferredClear

	(self hasProperty: #shouldClear) ifTrue: [
		self removeProperty: #shouldClear.
		self deferredClear].